class AddColumnToRegister < ActiveRecord::Migration[5.0]
  def change
    add_column :registers, :password, :string
    add_column :registers, :encrypted_password, :string
  end
end
