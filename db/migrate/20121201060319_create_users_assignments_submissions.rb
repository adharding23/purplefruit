class CreateUsersAssignmentsSubmissions < ActiveRecord::Migration
  def change
    create_table :users_assignments_submissions do |t|
	  t.references :assignment
	  t.references :submission
	  t.references :user
      t.timestamps
    end
	add_index :users_assignments_submissions, :assignment_id
	add_index :users_assignments_submissions, :submission_id
	add_index :users_assignments_submissions, :user_id
  end
end
