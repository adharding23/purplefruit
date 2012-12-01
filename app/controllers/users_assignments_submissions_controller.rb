class UsersAssignmentsSubmissionsController < ApplicationController
	def new
		@users_assignments_submissions = UsersAssignmentsSubmissions.new
	end

	def create
		@users_assignments_submissions = UsersAssignmentsSubmissions.new
		@users_assignments_submissions.user_id = params[:user_id]
		@users_assignments_submissions.assignment_id = params[:assignment_id]
		@users_assignments_submissions.submission_id = params[:submission_id]
		if @users_assignments_submissions.save
			flash[:notice] = "Question Added"
			flash[:color]= "valid"
		else
			flash[:notice] = "Form is invalid"
			flash[:color]= "invalid"
		end
		redirect_to :back
	end
end
