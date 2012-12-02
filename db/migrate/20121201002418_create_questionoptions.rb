class CreateQuestionoptions < ActiveRecord::Migration
  def change
    create_table :questionoptions do |t|
      t.string :option
	  t.references :question
      t.timestamps
    end
	add_index :questionoptions, :question_id
  end
end
