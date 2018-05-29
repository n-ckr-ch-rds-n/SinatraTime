require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named_cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat_form' do
  erb(:cat_form)
end
