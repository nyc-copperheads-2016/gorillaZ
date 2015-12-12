# find chosen survey and redirect to its questions
get 'survey/:id' do
  survey = TakenSurvey.new(survey_id: params[:id], user_id: current_user.id)
  question = Survey.find(params[:id]).questions.first
  erb :'/question/show', locals: {survey: survey, question: question}
end