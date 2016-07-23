get '/questions/new' do
  erb :'/questions/new'
end


get '/questions/:id' do
	@question = Question.find(params[:id])
	erb :"/questions/index"
end

post '/questions/new' do
  @question = Question.create(title: params[:title], question: params[:question], user_id: session[:user_id])
  redirect :"/"
end
