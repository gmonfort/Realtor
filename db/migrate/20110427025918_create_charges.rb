class CreateCharges < ActiveRecord::Migration
  def self.up
    create_table :charges do |t|
      t.string :name, :null => false
      t.string :code
      t.integer :kind, :null => false, :default => Charge::VariableType
      t.timestamps
    end
  end

  def self.down
    drop_table :charges
  end
end
