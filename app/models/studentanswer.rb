class Studentanswer < ActiveRecord::Base
  attr_accessible :answer, :qid, :pointsreceived

  belongs_to :submission
end
