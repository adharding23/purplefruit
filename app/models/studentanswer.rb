class Studentanswer < ActiveRecord::Base
  attr_accessible :answer, :qid, :pointsreceived, :graded, :usedhint

  belongs_to :submission
end
