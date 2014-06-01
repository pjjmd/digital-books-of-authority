require 'bundler/setup'

require 'nokogiri'
require 'open-uri'

require 'json'
require 'sinatra'

get '/' do
  haml(:index, format: :html5)
end

post '/cases' do
  url = URI.parse params[:decisionurl0]
  doc = Nokogiri::HTML(open(url))
  params[:decision0] = doc.css('#originalDocument').first

  erb(:frontpage, locals: params)
end
