class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
	  t.string :name
	  t.datetime :duedate
	  t.integer :totalpoints
	  t.references :course
      t.timestamps
    end
	add_index :assignments, :course_id
  end
end
