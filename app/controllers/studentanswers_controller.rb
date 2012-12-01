class StudentanswersController < ApplicationController
	def new
		@studentanswer = Studentanswer.new
	end

	def create
		@submission = Submission.find(params[:studentanswer][:submission_id])
		#@studentanswer = @submission.studentanswers.build()
		params[:studentanswer].each do |key, value|
			if is_numeric?(key)
				@studentanswer = @submission.studentanswers.build()#({:studentanswer=>{:qid=>key,:answer=>value,:pointsreceived=>0}})
				#@studentanswer = Studentanswer.new
				@studentanswer.qid = key
				@studentanswer.answer = value
				@studentanswer.pointsreceived = 0
				#@submission.studentanswers = @studentanswer
				@studentanswer.save
			else
				flash[:notice] = key
			end
		end
		if @studentanswer.save
			flash[:notice] = "Answers Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		redirect_to :back
	end

	def index
	end
	
def is_numeric?(obj) 
   		obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
	end


end
