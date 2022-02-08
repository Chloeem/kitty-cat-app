require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'hello'
end

get '/secret' do
  'Hello Makers Academy'
end

get '/makers' do
  'BOO!'
end

get '/random-cat' do
  @name = ['Amigo', 'Misty', 'Almond'].sample
  erb(:index)
end

get '/named-cat' do
  p @name = params[:name]
  erb(:index)
end

