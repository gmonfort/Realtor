class CreateRentals < ActiveRecord::Migration
  def self.up
    create_table :rentals do |t|
      t.integer :mode, :null => false, :default => 1
      t.date :start_date, :null => false
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :rentals
  end
end
