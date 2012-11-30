class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :coursenumber
      t.integer :year
      t.string :semester
      t.integer :section

      t.timestamps
    end
  end
end
