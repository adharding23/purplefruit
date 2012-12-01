class Assignment < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
	validates :duedate, :presence => true
	validates :totalpoints, :presence => true	

	attr_accessible :name, :duedate, :totalpoints, :assignment_id, :id
    belongs_to :course
	has_and_belongs_to_many :questions
	has_many :submissions
end
