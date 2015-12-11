# show each individual question
get '/questions/:id' do
  question = Question.find(params[:id]).next
  survey = TakenSurvey.find(params[:survey_id])
  if defined?(question)
    erb :'/questions/show', locals: {question: question, survey: survey}
  else
    erb :'/answers'
  end
end

# post to the answers table to track a users response for a specific question then redirect to the next question, else return to the same page and
post '/questions' do
  answer = Answer.new(params)
  if answer.save
    # question id is static here so no way of adding a method to the model. It will need to be manually incremented (+1) here or in the view
    redirect '/questions/<%= params[:question.id] %>'
  else
    error = answer.errors.full_messages
    erb :'/questions/show', locals: {answer: answer}
  end
end



