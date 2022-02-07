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

get '/cat' do
  "<div style='border: 8px dashed red'>
    <img src='https://i.imgur.com/jFaSxym.png' alt='Cute picture of a kitten'>
  </div>"
end

