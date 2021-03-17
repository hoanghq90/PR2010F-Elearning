class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :test_id, foreign_key: true
      t.integer :answers_id, foreign_key: true
      t.float :mark
      t.timestamps
    end
  end
end
