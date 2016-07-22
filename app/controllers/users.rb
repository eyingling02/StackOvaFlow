get '/users' do
  erb :'/users/index'
end

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    redirect :'/users'
  else
    erb :'/users/new'
  end
end

get '/users/:id' do
  erb :'/users/profile'
end
