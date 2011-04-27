class Charge < ActiveRecord::Base
  
  FixedType = 1
  VariableType = 2

  has_many :rental_charges
  has_many :rentals, :through => :rental_charges

  validates :name, :presence => true, :length => { :maximum => 20 }
  validates :kind, :presence => true, :numericality => true
  validates_inclusion_of :kind, :in => [FixedType, VariableType], :message => "Invalid charge type"


end
