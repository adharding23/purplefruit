class Questionoption < ActiveRecord::Base

  validates :option, presence => true

  attr_accessible :option

  belongs_to :question
end
