class CoursesController < ApplicationController
  def new
	@course = Course.new
  end

  def create
    @course = Course.new(params[:course])
	if @course.save
		flash[:notice] = "You have succesfully created a class"
		flash[:color]= "valid"
	else
		flash[:notice] = "Form is invalid"
		flash[:color]= "invalid"
	end
 	redirect_to "/home"
  end

  def show
	@course = Course.find(params[:id])
	render 'show'
  end
end
