class QuestionsController < ApplicationController
  def new
		@question=Question.new
  end

	def create
		@question = Question.new(params[:question])
		if @question.save
			flash[:notice] = "Question Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		redirect_to :back
	end

  def show
  end
end
