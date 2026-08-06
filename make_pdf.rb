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
# A4, not Letter: this CV targets the Finnish/EU market, where A4 is the standard
# paper size (Letter prints with wrong margins here).
kit = PDFKit.new(File.new("#{site_dir}/index.html"), :page_size => 'A4')
file = kit.to_file("#{site_dir}/Eralp-Karaduman-CV.pdf")
puts "Generated PDF is here: #{file.path}"
