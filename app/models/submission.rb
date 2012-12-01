class Submission < ActiveRecord::Base
  attr_accessible :completionstatus, :pointsreceived

  belongs_to :assignment
  has_many :studentanswers
end
