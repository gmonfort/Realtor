class AddOwnerToProperties < ActiveRecord::Migration
  def self.up
    change_table :properties do |t|
      # add_column :properties, :owner_id, :integer, :null => false
      # t.boolean :is_active, :default => true, :null => false
      t.integer :owner_id, :null => false
    end
  end

  def self.down
    change_table :tasks do |t|
      t.remove :owner_id
    end
  end
end
