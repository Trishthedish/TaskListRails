class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
    redirect_to login_failure_path unless auth_hash['uid']

    @user = User.find_by(uid: auth_hash[:uid], provider: 'github')
    if @user.nil?
      # User doesn't match anything in the DB.
      # Attempt to create a new user.
      @user = User.build_from_github(auth_hash)
      # if cant be saved it will redirect
      flash[:notice] = "Unable to save the user"
      return redirect_to root_path unless @user.save
    end
    # Save user ID in the session
    # storing into a session id from user model. which may not be the uid that github has given us.
    # Save the user ID in the session
    session[:user_id] = @user.id

    flash[:notice] = "Succesfully logged in!"
    redirect_to root_path
  end

  def index
    @user = User.find(session[:user_id]) # < recalls the value set in a previous request
  end
end
