class CreateStudentanswers < ActiveRecord::Migration
  def change
    create_table :studentanswers do |t|
      t.integer :qid
	  t.string :answer
      t.integer :pointsreceived
	  t.boolean :graded
	  t.references :submission

      t.timestamps
    end
	add_index :studentanswers, :submission_id
  end
end
