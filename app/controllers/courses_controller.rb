class CoursesController < ApplicationController
  def new
	@course = Course.new
  end

  def create
    @course = Course.new(params[:course])
	if @course.save
		@user = @course.users.build(:name => @course.name);
		@user.save;
		flash[:notice] = "You have succesfully created a class"
		flash[:color]= "valid"
	else
		flash[:notice] = "Form is invalid"
		flash[:color]= "invalid"
	end
 	render "new"
  end
end
