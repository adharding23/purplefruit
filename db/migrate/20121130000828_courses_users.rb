class CoursesUsers < ActiveRecord::Migration
  def up
	create_table "courses_users", :id => false do |t|
		t.column "course_id", :integer, :null => false
		t.column "user_id", :integer, :null => false
	end
  end

  def down
	drop_table :courses_users
  end
end
