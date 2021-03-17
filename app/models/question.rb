class Question < ApplicationRecord
  belongs_to :course
  has_many :answer
  has_many :correct_answer
end
