class Question < ApplicationRecord
  belongs_to :course
  has_many :answers
  has_many :results
end
