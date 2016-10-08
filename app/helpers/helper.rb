def user_logged_in?
  session.key?('active_user')
end

def current_user
  User.find(session[:active_user]) 
end
