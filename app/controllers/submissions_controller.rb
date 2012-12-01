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

	def show
		@user = User.find(params[:user_id])
		@course = Course.find(params[:course_id])
		@assignment = Assignment.find(params[:assignment_id])
		@submission = Submission.find(params[:submission_id])
	end	

	def is_numeric?(obj) 
   		obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
	end


end
