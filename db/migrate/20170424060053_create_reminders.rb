class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.string :name
      t.string :message
      t.string :email
      t.date :dob

    end
  end
end
