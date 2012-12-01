class AssignmentsQuestionsController < ApplicationController
  def new
	@assignments_questions = AssignmentsQuestions.new
  end

  def create
	@assignment = Assignment.find(1)
    @assignments_questions = AssignmentsQuestions.new(params[:assignments_questions])
	if @assignments_questions.save
		flash[:notice] = "You have added a question"
		flash[:color]= "valid"
	else
		flash[:notice] = "Form is invalid"
		flash[:color]= "invalid"
	end
 	#render "new"
	#redirect_to course_assignment_path(@assignment)
	redirect_to :controller=>'assignments', :action => 'show', :id=>@assignment.id
  end
 
end
