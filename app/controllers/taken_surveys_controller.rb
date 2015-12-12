# refactor
post "/taken_surveys" do
  taken_survey = TakenSurvey.new(user_id: current_user.id, survey_id: params[:survey_id])
  initial_question = taken_survey.initial_question
  if taken_survey.save
    redirect "/taken_surveys/#{taken_survey.id}/questions/1"
  else
    errors = survey.errors.full_messages
    erb :'/', locals: {errors: errors}
  end
end

