require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello world!"
end

get '/secret' do
  "this is a secret!"
end

get '/endpage' do
  "this is the endpage!"
end

get '/cat' do
  "<div>
  <img src=https://i.imgur.com/jFaSxym.png  style = 'border: dashed red;'>
  </div>"
end

