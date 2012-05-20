require "d3_status/version"
require "nokogiri"
require "colorize"
require "open-uri"
require "ap"
require "parser/d3_parser"

module D3Status
	
	def run
		parser = D3Parser.new
		parser.us_server
		parser.eu_server
		parser.asia_server
	end

end