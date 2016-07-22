get '/users' do
  @questions = Question.all
  erb :'/users/index'
end

get '/users/new' do
  @user = User.new(params[:user])
  erb :'/users/new'
end

post '/users/new' do
  @user = User.create(params[:user])
  redirect "/users/#{@user.id}"
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
