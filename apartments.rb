require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do 
	url ="http://toronto.en.craigslist.ca/apa/"

	data = Nokogiri::HTML(open(url))

	@listing = data.css(".row")
	erb :list
end



# listing.each do |i| 

# 	puts i.css(".pl").text.strip

	
# 	price = i.css(".price").text.strip


# 	if !price.nil?
# 		puts price
# 	else
# 		puts "N/A"
# 	end

# 	location = i.css("small").text.strip


# 	if !location.nil?
# 		puts location
# 	else
# 		break
# 		puts "No Location"
# 	end	

# 	puts ""

# end