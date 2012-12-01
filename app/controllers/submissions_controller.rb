class SubmissionsController < ApplicationController

	def new
		@submission = Submission.new
	end

	def create
		@assignment = Assignment.find(params[:assignment])
		@submission = @assignment.submissions.build(params[:submission])
		if @submission.save
			flash[:notice] = "Question Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		redirect_to :controller=>'users_assignments_submissions', :action => 'create', :user_id => session[:user_id], :assignment_id => @assignment.id, :submission_id => @submission.id

	end

	def update
		@submission = Submission.find(params[:submission][:submission_id])
		params[:submission].each do |key, value|
			if is_numeric?(key)
				# = { :studentanswer => { :qid=>key,:answer=>value,:pointsreceived=>0 }
				@submission.studentanswers.build({:studentanswer=>{:qid=>key,:answer=>value,:pointsreceived=>0}})
			else
				flash[:notice] = key
			end
		end
		if @submission.save
			flash[:notice] = "Answers Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		redirect_to :back
	end

	def is_numeric?(obj) 
   		obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
	end


end
