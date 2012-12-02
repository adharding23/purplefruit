class Studentanswer < ActiveRecord::Base
  attr_accessible :answer, :qid, :pointsreceived, :graded

  belongs_to :submission
end
