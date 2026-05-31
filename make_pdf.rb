require 'pdfkit'

PDFKit.configure do |config|
	config.default_options = {
		'disable-javascript': nil,
    'enable-local-file-access': true 
	}
	config.verbose = true
end

site_dir = ENV['SITE_DIR'] || './_site'

puts "Generating PDF..."
kit = PDFKit.new(File.new("#{site_dir}/index.html"), :page_size => 'Letter')
file = kit.to_file("#{site_dir}/cv.pdf")
puts "Generated PDF is here: #{file.path}"
