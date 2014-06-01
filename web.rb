require 'bundler/setup'

require 'open-uri'

require 'json'
require 'sinatra'

get '/' do
  haml(:index, format: :html5)
end

post '/cases' do
  url = URI.parse params[:decisionurl1]
  params[:decision1] = url.read

  erb(:frontpage, locals: params)
end
