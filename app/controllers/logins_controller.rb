class LoginsController < ApplicationController

  # THE CODE BELOW IS MODDED FROM:
  # http://guides.rubyonrails.org/action_controller_overview.html

  # "Create" a login, aka "log the user in"
  def create
    @user = User.find_by :handle => params[:handle]
    if @user.authenticate params[:password]
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = @user.id
      flash[:success] = 'You have been successfully logged in.'
      redirect_to root_path
    else
      flash[:danger] = 'Login Failed!'
      redirect_to root_path
    end
  end

  # "Delete" a login, aka "log the user out"
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    flash[:success] = 'You have been successfully logged out.'
    redirect_to root_path
  end
  
end
