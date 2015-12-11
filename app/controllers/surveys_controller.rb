# find chosen survey and redirect to its questions
get 'survey/:id' do
  survey = Survey.find(params[:id])
  erb :'/survey/show', locals: {survey: survey}
end