class Student < ApplicationRecord
  has_many :tests
  has_many :results, through: :tests
end
