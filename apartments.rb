require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'
require 'bundler/setup'

get '/' do 
	url ="http://toronto.en.craigslist.ca/apa/"

	data = Nokogiri::HTML(open(url,'User-Agent' => 'ruby'))
	@listing = data.css(".row")
	erb :list
end


