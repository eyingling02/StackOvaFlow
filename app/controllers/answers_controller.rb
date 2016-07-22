post '/answers/:id' do
    @answer = Answer.create(answer: params[:answer], question_id: params[:id], user_id: session[:user_id])
    redirect "/questions/#{params[:id]}"
end
