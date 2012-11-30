class Course < ActiveRecord::Base
	SEMESTER_TYPES = %w(fall spring Fall Spring)

	validates :coursenumber, :presence => true, :length => { :in => 3..20 }
	validates :name, :presence => true
	validates :section, :presence => true, :length => { :in => 4..4 }
	validates :semester, :presence => true, :inclusion => {:in => SEMESTER_TYPES}
	validates :year, :presence => true, :length => { :in => 4..4 }
	#validates :user_id, :presence => true, :length => { :in => 3..20 }

	attr_accessible :coursenumber, :name, :section, :semester, :year, :user_id

  	has_and_belongs_to_many :users
end
