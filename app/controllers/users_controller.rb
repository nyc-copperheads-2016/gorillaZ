get '/users/new' do
  if request.xhr?
    erb :'users/_ajaxed_new_form', layout: !request.xhr?
  else
    erb :'/users/new'
  end
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
  @user = current_user
  @user_taken_surveys = @user.taken_surveys
  @user_created_surveys = @user.created_surveys
  erb :'/users/show'
end
