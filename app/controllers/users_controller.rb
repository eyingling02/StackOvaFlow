get '/users/new' do
  @user = User.new(params[:user])
  erb :'/users/new'
end

post '/users' do
  @users = User.create(params[:user])
  redirect '/users/:id'
end

# get '/users/:id'
#   @user = User.find(params[:id])
#   erb :'/users/show'
# end
