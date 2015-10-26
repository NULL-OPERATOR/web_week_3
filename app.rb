require "sinatra"

get '/' do
  "Hello World"
end

get '/secret' do
  "AAAAAAAAAAAAH"
end


get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end


get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

post '/my-handling-form-page' do
  "Hello World"
end
