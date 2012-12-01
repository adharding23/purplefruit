class CreateAssignmentsQuestions < ActiveRecord::Migration
  def change
    create_table :assignments_questions, :id => false do |t|
      t.references :assignment
	  t.references :question

      t.timestamps
    end
	add_index :assignments_questions, :assignment_id
	add_index :assignments_questions, :question_id
  end
end
