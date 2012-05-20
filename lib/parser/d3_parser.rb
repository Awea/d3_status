# Code forked from https://github.com/JohnRedmond/D3Status

class D3Parser
	BATTLENET_WEB = "http://us.battle.net/d3/en/status"
	DIV_CONTENT   = "div.box"
	DIV_CLASS     = "div.status-icon"
	TOOLTIP       = "data-tooltip"

	def initialize
		doc = Nokogiri::HTML(open(BATTLENET_WEB))
		@html_statuses = doc.search(DIV_CONTENT)
		construct_statuses
	end

	def us_server
		fuzzy_cute_cute("Server US   : #{@statuses[0]}", @statuses[0])
	end
	
	def eu_server
		fuzzy_cute_cute("Server EU   : #{@statuses[1]}", @statuses[1])
	end
	
	def asia_server
		fuzzy_cute_cute("Server ASIA : #{@statuses[2]}", @statuses[2])
	end

private

	def fuzzy_cute_cute(string, status)
		if status.eql?'Available'
			puts string.green
		else
			puts string.red
		end
	end

	def construct_statuses
		@statuses = []
		@html_statuses.each  do |div|
			val 			 = div.css(DIV_CLASS).first.attributes[TOOLTIP].value # return server dispo
			@statuses << val
		end
	end
end