class QuestionsController < ApplicationController
  def new
		@question=Question.new
  end

	def create
		@question = Question.new
		@question.question = params[:question][:question]
		@question.answer = params[:question][:answer]
		@question.hint = params[:question][:hint]
		@question.mc = params[:question][:mc]
		@question.value = params[:question][:value]

		if @question.mc
			params[:question].each do |key, value|
				if key.length == 1
					unless value.empty?
						@questionoption = @question.questionoptions.build()
						@questionoption.option = value
					end
				end
			end
		end
		if @question.save
			flash[:notice] = "Question Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		redirect_to :back
 		#redirect_to course_assignment_path(:id => @assignment.id, :course_id => @assignment.course_id)
		#redirect_to :controller=>'assignments_questions', :action => 'create'
	end

  def show
  end
end
