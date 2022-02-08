# frozen_string_literal: true

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
  @name = %w 'Amigo', 'Misty', 'Almond'.sample %w
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end