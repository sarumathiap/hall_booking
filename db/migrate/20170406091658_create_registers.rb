class CreateRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :encrypted_password
      t.datetime :time
      t.datetime :endtime
      t.string :purpose
    

      t.timestamps
    end
  end
end
