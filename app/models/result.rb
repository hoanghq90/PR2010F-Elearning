class Result < ApplicationRecord
  belongs_to :answer
  belongs_to :test
  belongs_to :question
end
