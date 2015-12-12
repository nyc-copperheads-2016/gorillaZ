get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    redirect '/surveys/index' # DOUBLE CHECK THE FORM TO SEE WHAT THE ROUTE IS!
  else
    @errors = "Sorry, Your Request Was Not Processed.  Please Try Again!"
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(params[:id])
  erb :'/user/show'
end

# add route to profile view
