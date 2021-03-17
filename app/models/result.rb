class Result < ApplicationRecord
  belongs_to :answer
  belongs_to :test
  has_many :correct_answer
end
