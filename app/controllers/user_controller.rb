

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  User.create(params[:user])
  redirect '/'
end

get '/users/login' do
  erb :'/users/login'
end

post '/users/login' do
  @user = User.find_by(email: params[:user][:email])
  if @user.authenticate(params[:user][:password])
    session[:active_user] = @user.id
    redirect '/categories'
  else
    'Sorry that username or password is incorrect'
  end
end

post '/users/logout' do
  session.destroy
  redirect '/'
end
