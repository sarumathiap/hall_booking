class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :phone
      t.string :addres
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
