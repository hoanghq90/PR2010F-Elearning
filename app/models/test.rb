class Test < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_many :result
end
