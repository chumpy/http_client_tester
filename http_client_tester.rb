require 'sinatra'
require 'json'

def show_request
  content_type :json
  {:method => request.request_method}.to_json
end 

get '/' do
  show_request
end

post '/' do
  show_request 
end

put '/' do
  show_request
end

options '/' do
  show_request
end

delete '/' do
  show_request
end

head '/' do
  show_request
end
