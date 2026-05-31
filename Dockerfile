# Minimal amd64 image to build/preview the Jekyll CV locally.
# Matches the versions pinned in Gemfile.lock (Ruby 2.5 / Bundler 1.16.5 / Jekyll 3.7.4).
FROM ruby:2.5-slim

# Debian buster (this image's base) is EOL — repoint apt at the archive mirror.
# Native gems (eventmachine, ffi, http_parser.rb) need a compiler + libffi headers.
# wget/ca-certificates are used to fetch the wkhtmltopdf .deb below.
RUN printf 'deb http://archive.debian.org/debian buster main\ndeb http://archive.debian.org/debian-security buster/updates main\n' > /etc/apt/sources.list \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y --no-install-recommends \
      build-essential \
      libffi-dev \
      git \
      wget \
      ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# PDF generation: wkhtmltopdf (patched-Qt build runs headless, no X server needed).
# Uses the buster amd64 package; apt resolves its runtime deps (fonts, X libs, etc.).
RUN wget -q https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.buster_amd64.deb \
    && apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get install -y --no-install-recommends ./wkhtmltox_0.12.6-1.buster_amd64.deb \
    && rm -f wkhtmltox_0.12.6-1.buster_amd64.deb \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /cv

# Install gems into the image (GEM_HOME=/usr/local/bundle, outside /cv),
# so the runtime bind-mount of the source doesn't clobber them.
RUN gem install bundler -v 1.16.5
COPY Gemfile Gemfile.lock ./
RUN bundle install

# pdfkit drives wkhtmltopdf from make_pdf.rb; installed outside the bundle (as CI does).
RUN gem install pdfkit -v 0.8.6

# Helper: build the static site into _pdfbuild, then render it to _pdfbuild/cv.pdf.
# Uses a separate output dir (not _site) so it never clobbers a running
# `jekyll serve` preview. Disables the download-link/analytics JS (INJECT=NO),
# same as CI.
RUN printf '#!/bin/sh\nset -e\nexport INJECT_CV_DOWNLOAD_LINK=NO\nexport SITE_DIR=_pdfbuild\nbundle exec jekyll build -d "$SITE_DIR"\nruby make_pdf.rb\n' > /usr/local/bin/build-pdf \
    && chmod +x /usr/local/bin/build-pdf

EXPOSE 4000

# jekyll-github-metadata needs the repo name; git remote isn't available in-container.
# (INJECT_CV_DOWNLOAD_LINK defaults to YES, so the serve preview shows the download
#  button; build-pdf overrides it to NO for the PDF render.)
ENV PAGES_REPO_NWO=eralpkaraduman/cv

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--force_polling"]
