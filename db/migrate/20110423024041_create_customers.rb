class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name, :null => false
      t.string :document
      t.string :phone, :null => false
      t.string :cell_phone
      t.boolean :active, :null => false, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
