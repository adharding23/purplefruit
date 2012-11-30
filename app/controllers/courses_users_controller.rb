class CoursesUsersController < ApplicationController
  def new
	@courses_users = CoursesUsers.new
  end

  def create
    @courses_users = CoursesUsers.new(params[:courses_users])
	if @courses_users.save
		flash[:notice] = "You have succesfully added a student to a class"
		flash[:color]= "valid"
	else
		flash[:notice] = "Form is invalid"
		flash[:color]= "invalid"
	end
 	render "new"
  end

end
