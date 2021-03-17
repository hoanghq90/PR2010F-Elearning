class CreateCorrectAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :correct_answers do |t|
      t.integer :question_id, foreign_key: true
      t.integer :result_id, foreign_key: true

      t.timestamps
    end
  end
end
