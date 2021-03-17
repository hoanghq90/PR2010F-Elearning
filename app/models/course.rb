class Course < ApplicationRecord
  has_many :question
  has_many :test
end
