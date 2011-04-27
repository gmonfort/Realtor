class CreateRentalCharges < ActiveRecord::Migration
  def self.up
    create_table :rental_charges do |t|
      t.references :rental, :null => false
      t.references :charge, :null => false
      t.decimal :amount, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :rental_charges
  end
end
