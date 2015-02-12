class SessionsController < ApplicationController
  def new
    # create a new user when you have a new session
    @user = User.new
  end

  def create
  # find user by email
  #   in the params hash look for the user and it's email
    u = User.where(email: params[:user][:email]).first
    # confirm we know the user and they are authenticated
    if u != nil && u.authenticate(params[:user][:password])
      # saving session as a cookie - sends the session to the browser
      # the browser will now know the user
      # session will send cookies
      session["user_id"] = u.id.to_s
      # if successful log in redirect to index of users
      redirect_to new_user_path
    end
  end

  def destroy
    # if logging out destroy this session
    session.destroy
  end
end
