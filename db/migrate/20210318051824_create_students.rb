class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :shool_name
      t.boolean :gender
      t.timestamps
    end
  end
end
