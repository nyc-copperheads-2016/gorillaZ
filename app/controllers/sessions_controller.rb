get '/sessions/new' do
  erb :'sessions/new'
end

delete '/sessions' do
  session.clear
  redirect '/'
end

post '/sessions' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password_hash]
    session[:user_id] = user.id
    redirect '/surveys/index'
  else
    redirect '/?errors=incorrect_username_or_password'
  end
end

