class CreateQuestionoptions < ActiveRecord::Migration
  def change
    create_table :questionoptions do |t|
      t.string :option

      t.timestamps
    end
  end
end
