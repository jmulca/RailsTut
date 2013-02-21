class SessionsController < ApplicationController

  # GET /sessions/new
  # GET /sessions/new.json
  def new
  end

  # POST /sessions
  # POST /sessions.json
  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    sign_out
    redirect_to root_url
  end
end
