require 'pry'
require 'sinatra'
require 'colorize'

get '/' do
  erb :about_me
end

get '/contact' do
  erb :contact
end

get '/resume' do
  erb :resume
end

post '/contact  ' do
  "Thanks #{params[:first_name]}, we'll be in touch shortly."
end


not_found do
  status 404
  "We don't know what you did pal... But you really screwed things up!"
end
