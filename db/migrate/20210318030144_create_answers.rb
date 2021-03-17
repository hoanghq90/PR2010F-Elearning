class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :content
      t.boolean :correct, default: false
      t.integer :question_id, foreign_key: true
      t.timestamps
    end
  end
end
