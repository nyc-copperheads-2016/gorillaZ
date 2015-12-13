# refactor
post "/taken_surveys" do
  taken_survey = TakenSurvey.new(user_id: current_user.id, survey_id: params[:survey_id])
  if taken_survey.save
    taken_survey_id = taken_survey.id
    initial_question_id = taken_survey.initial_question.id
    redirect "/taken_surveys/#{taken_survey_id}/questions/#{initial_question_id}"
  else
    errors = survey.errors.full_messages
    erb :'/', locals: {errors: errors}
  end
end

