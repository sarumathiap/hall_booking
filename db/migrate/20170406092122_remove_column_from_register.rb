class RemoveColumnFromRegister < ActiveRecord::Migration[5.0]
  def change
    remove_column :registers, :password, :string
     remove_column :registers, :encrypted_password, :string
  end
end
