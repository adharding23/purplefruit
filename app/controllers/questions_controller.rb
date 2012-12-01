class QuestionsController < ApplicationController
  def new
		@question=Question.new
  end

	def create
		@assignment = Assignment.find(params[:question][:assignment_id])
		@question = Question.new(params[:question])
		if @question.save
			flash[:notice] = "Question Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
 		redirect_to course_assignment_path(:id => @assignment.id, :course_id => @assignment.course_id)
		#redirect_to :controller=>'assignments_questions', :action => 'create'
	end

  def show
  end
end
