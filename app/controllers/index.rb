get '/' do
  redirect '/home'
end

get '/home' do
  p params
  p session

  erb :'homepage/index'
end
