post '/answers' do
  answer = Answer.new(params)
  taken_survey = TakenSurvey.find(params[:taken_survey_id])
  question = Question.find(params[:question_id])
  if answer.save
    redirect "/taken_surveys/#{taken_survey.id}/questions/#{question.id.next}"
  else
  end
end


get "/taken_surveys/:id/answers" do
  @taken_survey = TakenSurvey.find(params[:id])
  @answers = @taken_survey.answers
  erb :"/answers/show"
end

