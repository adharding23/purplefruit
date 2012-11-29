class UsersController < ApplicationController
  # GET /users
  # GET /users.json
	before_filter :save_login_state, :only => [:new, :create]

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
	if @user.save
		flash[:notice] = "You Signed up successfully"
		flash[:color]= "valid"
	else
		flash[:notice] = "Form is invalid"
		flash[:color]= "invalid"
	end
 	render "new"
  end

end
