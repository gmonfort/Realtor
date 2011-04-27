require 'spec_helper'

describe Rental do
  fixtures :all

  before { @rental = Rental.new }

  subject { @rental }

  context "when brand new" do
    # shoulda matchers
    it { should have_many(:rental_charges) }
    it { should have_many(:charges).through(:rental_charges) }

    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:start_date) }

    it { should validate_presence_of(:mode) }
    it { should validate_numericality_of(:mode) }
    # it { should allow_value(Rental::FixedType).for(:kind) }
    # it { should allow_value(Rental::VariableType).for(:kind) }
    # it { should_not allow_value(14).for(:kind) }
  end
end
