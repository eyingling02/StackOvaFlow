get '/questions/:id' do
	@question = Question.find(params[:id])
	erb :"/questions/index"
end