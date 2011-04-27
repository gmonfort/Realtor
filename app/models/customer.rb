class Customer < ActiveRecord::Base
  has_many :properties, :foreign_key => "owner_id", :dependent => :destroy

  validates :last_name, :presence => true, 
                        :uniqueness => true

  validates :phone,     :presence => true
end
