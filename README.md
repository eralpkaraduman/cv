[eralpkaraduman.github.io/cv]: https://eralpkaraduman.github.io/cv
[latest release]: https://github.com/eralpkaraduman/cv/releases/latest

# Source of Eralp Karaduman's CV

| Website                       | PDF Version      |
|----------------------------   |------------------|
| [eralpkaraduman.github.io/cv] | [latest release] |

**If you want to have your own, just fork this repo and modify the `index.md`.**

This is a fairly modified version of
[elipapa's markdown-cv](http://elipapa.github.io/markdown-cv) project.  
Which is using [jekyll](https://jekyllrb.com) to host the cv as static site on github.

My version simply uses
[sindresorhus's github-markdown-css](https://github.com/sindresorhus/github-markdown-css), the close
replica of github's markdown style. And it is able to auto-generate a PDF version release through travis-ci (if set up)


## Features
- Maintain your cv using Markdown
- Free website for your CV _(hosted on github-pages)_
- Automaticaly updated PDF version _(hosted on github releases)_
- Always have one link to your latest CV online for free
- Update it easily on the web _(using github's web editor)_


## Automatic PDF version generation

The GitHub Action in `.github/workflows/ruby.yml` builds the PDF (inside the
Docker image) and publishes it as a GitHub release on every push to `gh-pages`.
You can always link to the latest release by adding the suffix
`/releases/latest` to the repo url. For example;  
github.com/your-username-here/cv[/releases/latest](https://github.com/eralpkaraduman/cv/releases/latest)

No setup is required: the workflow uses the built-in `GITHUB_TOKEN` (granted
`contents: write` in the workflow file) to create the release, so there's no
personal access token or repository secret to configure. Just make sure the
repo's **Settings → Actions → General → Workflow permissions** is set to
"Read and write permissions".

- Latest release is conveniently always at `/releases/latest`


The same workflow also commits the rebuilt PDF back to `gh-pages` as
`Eralp-Karaduman-CV.pdf`, so GitHub Pages serves it from the site itself at
`/cv/Eralp-Karaduman-CV.pdf`. Pushes made with `GITHUB_TOKEN` don't re-trigger
workflows, and the push trigger ignores that path anyway, so there's no loop.


## Including downlad link to PDF version in the website

The "Download as PDF" button in `_layouts/cv.html` points at the same-origin
`Eralp-Karaduman-CV.pdf` on the Pages site, not at the GitHub release asset.
The release URL 302s to `release-assets.githubusercontent.com` and serves
`application/octet-stream` with `Content-Disposition: attachment`, which
corporate proxies and mobile in-app browsers can block with no visible error
and no inline fallback. Same origin plus `application/pdf` means the file
previews inline from a host the visitor has already loaded successfully. The
release asset stays as a versioned permalink.

This link won't be generated in the PDF itself for several reasons;  
- Lack of necessity, since you have the pdf there's no need to download it again.
- I didn't want to figure out the issues with executing javascript in pdf generation context
- ~~Travis CI blocks the request to github API i guess?~~ We don't use travis anymore, automation is moved to github actions
- I disabled javascript on wkhtmltopdf, see reasons above.


## Running jekyll locally

*(You don't need to run it locally to update this, do it on github's web ui)*    

Since after your every change a new cv will be generated, this may cause excessive number of generations. To avoid this you may choose to make several commits on your local environment. Then push them all at once. To be able to preview the CV you should run Jekyll locally.

You should look at [jekyll's own documentation](https://jekyllrb.com/docs) but,
this is how you'd get started;  

`bundle install`  
`bundle exec jekyll serve --host=0.0.0.0`


## Running locally with Docker

If you'd rather not install Ruby/Jekyll/wkhtmltopdf on your machine, there's a
`Dockerfile` that pins the same versions used in CI (Ruby 2.5 / Bundler 1.16.5 /
Jekyll 3.7.4) and bundles `wkhtmltopdf` for PDF generation. The image targets
`linux/amd64`; on Apple Silicon it runs under emulation.

Build the image once:

```sh
docker build --platform linux/amd64 -t cv-jekyll .
```

**Preview the site** with live reload at http://localhost:4000 (the repo is
bind-mounted, so edits to `index.md` rebuild automatically). The PDF-download
button is injected here, same as the live site:

```sh
docker run -d --platform linux/amd64 --name cv-jekyll -p 4000:4000 -v "$PWD":/cv cv-jekyll
```

Stop / restart it with:

```sh
docker rm -f cv-jekyll
```

**Generate the PDF** (writes `_pdfbuild/Eralp-Karaduman-CV.pdf` on the host, in a
separate dir so it doesn't clobber a running preview; JS injection disabled to
match CI):

```sh
docker run --rm --platform linux/amd64 -v "$PWD":/cv cv-jekyll build-pdf
```

Notes:
- The download button is a relative link to `Eralp-Karaduman-CV.pdf` at the repo
  root, so locally it serves whatever version is committed there, not the fresh
  `_pdfbuild/Eralp-Karaduman-CV.pdf` you just generated. Copy it over if you want
  to preview the new one.
- The PDF is rendered at A4 (`make_pdf.rb`), and wkhtmltopdf uses screen media,
  so the `@media print` rules in `media/style.css` apply only to browser printing.
- The base image is Debian buster (EOL), so the `Dockerfile` repoints `apt` at
  `archive.debian.org`; `wkhtmltopdf` uses the patched-Qt build and runs headless
  (no `xvfb` needed, unlike CI).
