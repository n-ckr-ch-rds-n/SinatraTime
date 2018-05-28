require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/cat' do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
