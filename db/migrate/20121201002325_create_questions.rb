class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :hint
      t.boolean :mc
	  t.integer :value
	  
      t.timestamps
    end
  end
end
