get '/surveys/new' do
  erb :'/surveys/new'
end

post '/surveys' do
session[:user_id] = 1
new_survey = current_user.surveys.new(params[:survey])
question = new_survey.questions.new(params[:question])
Choice.create_choices(question, params[:choice_answers])
  if new_survey.save
    redirect '/surveys'
  else
    redirect '/?errors=survey error. Not saved'
  end
end
