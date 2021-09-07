require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "hello world!"
end

get '/secret' do
  "this is a secret!"
end

get '/endpage' do
  "this is the endpage!"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end