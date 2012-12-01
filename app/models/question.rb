class Question < ActiveRecord::Base
  
 
  attr_accessible :answer, :hint, :mc, :question, :value

  has_many :questionoptions
  has_and_belongs_to_many :assignments
end
