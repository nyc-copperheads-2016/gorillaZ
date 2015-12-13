post '/answers' do
  taken_survey = TakenSurvey.find(params[:taken_survey_id])
  answer = taken_survey.answers.new(taken_survey_id: params[:taken_survey_id], question_id: params[:question_id], choice_id: params[:choice_id])
  question = Question.find(params[:question_id])
  if answer.save
    redirect "/taken_surveys/#{taken_survey.id}/questions/#{question.id.next}"
  else
    @errors = answers.errors.full_messages
    erb :'/surveys/show'
  end
end


get "/taken_surveys/:id/answers" do
  taken_survey = TakenSurvey.find(params[:id])
  survey = Survey.find(taken_survey.survey_id)
  answers = taken_survey.answers
  erb :'answers/show', locals: {survey: survey, answers: answers, taken_survey: taken_survey}
end

