class CreateRemoveColumnFromRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :remove_column_from_registers do |t|

      t.timestamps
    end
  end
end
