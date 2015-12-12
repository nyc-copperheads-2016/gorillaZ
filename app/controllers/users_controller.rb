get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params)
  if user.save
    session[:user_id] = user.id
    redirect '/surveys' # DOUBLE CHECK THE FORM TO SEE WHAT THE ROUTE IS!
  else
    @errors = "Sorry, Your Request Was Not Processed.  Please Try Again!"
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(params[:id])
  @user_taken_surveys = user_taken_surveys
  @user_created_surveys = user_created_surveys
  erb :'/user/show'
end

