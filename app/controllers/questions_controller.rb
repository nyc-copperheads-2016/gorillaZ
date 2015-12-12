# show each individual question
get '/taken_surveys/:id/questions/:question_id' do
  taken_survey = TakenSurvey.find(params[:id])
  survey = Survey.find(taken_survey.survey_id)
  if survey.questions.exists?(params[:question_id])
    question = survey.questions.find(params[:question_id])
    erb :'/questions/show', locals: {question: question, taken_survey: taken_survey, survey: survey}
  else
    erb :'answers/show', locals: {survey: survey}
  end
end

# post to the answers table to track a users response for a specific question then redirect to the next question, else return to the same page and
post '/questions' do
  answer = Answer.new(params)
  if answer.save
    # question id is static here so no way of adding a method to the model. It will need to be manually incremented (+1) here or in the view
    redirect '/questions/<%= params[:question.id] %>'
  else
    question = Question.find(params[:question_id])
    errors = answer.errors.full_messages
    erb :'/questions/show', locals: {answer: answer, question: question, errors: errors}
  end
end



