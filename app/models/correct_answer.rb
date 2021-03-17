class CorrectAnswer < ApplicationRecord
  belong_to :question
  belong_to :result

end
