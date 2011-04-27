class Property < ActiveRecord::Base

  belongs_to :owner, :class_name => "Customer", :foreign_key => "owner_id"

  validates :name,  :presence   => true,
                    :length     => { :maximum => 50 }
end
