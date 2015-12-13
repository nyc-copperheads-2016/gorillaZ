get '/sessions/new' do
  if request.xhr?
   erb :'sessions/_ajaxed_new_session_form',layout: !request.xhr?
  else
    erb :'/sessions/new'
  end
end

delete '/sessions' do
  session.clear
  redirect '/'
end

post '/sessions' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/users/show'
  else
    redirect '/?errors=incorrect_username_or_password'
  end
end


