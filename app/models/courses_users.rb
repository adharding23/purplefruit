class CoursesUsers < ActiveRecord::Base
  validates :course_id, :presence => true
  validates :user_id, :presence => true
  attr_accessible :course_id, :user_id
end
