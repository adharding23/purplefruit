class Assignment < ActiveRecord::Base
  	validates :name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }

	attr_accessible :name
    belongs_to :course
end
