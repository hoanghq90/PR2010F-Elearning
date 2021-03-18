class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.integer :quantity
      t.integer :course_id, foreign_key: true
      t.integer :student_id, foreign_key: true
      t.timestamps
    end
  end
end
