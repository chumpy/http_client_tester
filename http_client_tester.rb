require 'sinatra'
require 'json'

def show_request
  content_type :json
  # Pringing all env keys that start with HTTP_ is a quick and dirty way to
  # dump interesting HTTP headers:
  puts "Request environment dump:"
  env.each do |k, v|
    puts "'#{k}' is '#{v}'" if k =~ /^HTTP_/
  end
  {:method => request.request_method, :user_agent => request.user_agent}.to_json
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
