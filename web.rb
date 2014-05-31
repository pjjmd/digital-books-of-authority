require 'bundler/setup'

require 'open-uri'

require 'json'
require 'sinatra'

get '/' do
  haml(:index, format: :html5)
end

post '/cases' do
  decision = open(params[:decisionurl1]).read

  decision
end
