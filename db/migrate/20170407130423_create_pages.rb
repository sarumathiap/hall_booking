class CreatePages < ActiveRecord::Migration[5.0]
 def self.up
    create_table :pages do |t|
t.string :name
t.string :email
t.string :password
t.string :encrypted_password
t.string :salt

      t.timestamps
    end
  end
def self.down
remove_table :pages do |t|
end
end
end
