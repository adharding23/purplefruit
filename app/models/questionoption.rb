class Questionoption < ActiveRecord::Base

  attr_accessible :option

  belongs_to :question
end
