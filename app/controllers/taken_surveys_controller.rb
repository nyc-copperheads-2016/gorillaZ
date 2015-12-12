get '/taken_survey/:id' do
  taken_survey = TakenSurvey.new(survey_id: params[:id], user_id: current_user.id)
  initial_question = Survey.find(params[:id]).questions.first
  if taken_survey.save
    redirect 'taken_survey/:{#taken_survey.id}/questions/<%= initial_question.id %>'
  else
    errors = survey.errors.full_messages
    erb :'/', locals: {errors: errors}
  end
end


