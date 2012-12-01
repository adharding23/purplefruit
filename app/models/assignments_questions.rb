class AssignmentsQuestions < ActiveRecord::Base
  validates :assignment_id, :presence => true
  validates :question_id, :presence => true
  attr_accessible :assignment_id, :question_id
end
