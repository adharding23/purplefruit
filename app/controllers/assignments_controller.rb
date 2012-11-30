class AssignmentsController < ApplicationController
  def new
		@assignment = Assignment.new
	end

	def create
		@course = Course.find(params[:course_id])
		@assignment = @course.assignments.build(params[:assignment]);
		if @assignment.save
			flash[:notice] = "You have succesfully created an assignment"
			flash[:color]= "valid"
			render 'show'
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
			render 'new'
		end
	end

	def show
		@assignment = Assignment.find(params[:id])
	end

	def edit
	end		
end
