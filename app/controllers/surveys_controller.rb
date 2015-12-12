get '/survey/:id' do
  survey = TakenSurvey.new(survey_id: params[:id], user_id: current_user.id)
  initial_question = Survey.find(params[:id]).first
  if survey.save
    erb :'/question/show', locals: {survey: survey, initial_question: initial_question}
  else
    errors = survey.errors.full_messages
    erb :'/'
  end
end


