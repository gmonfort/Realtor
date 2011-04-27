class Rental < ActiveRecord::Base

  has_many :rental_charges
  has_many :charges, :through => :rental_charges
  # has_many :fixed_charges, :through => :rental_charges, :conditions => ['kind = ?', Charge::FixedType]
  # has_many :variable_charges, :through => :rental_charges, :conditions => ['kind = ?', Charge::VariableType]
  
  accepts_nested_attributes_for :rental_charges, :allow_destroy => true

  validates :start_date, :presence => true
  validates :mode, :presence => true, :numericality => true

  #TODO add support for different types of rentals (rental modes)
end
