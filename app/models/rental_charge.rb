class RentalCharge < ActiveRecord::Base
  belongs_to :rental
  belongs_to :charge

  validates :amount, :presence => true, :numericality => true
end
