require 'spec_helper'

describe Charge do
  fixtures :all

  before { @charge = Charge.new }

  subject { @charge }

  context "when brand new" do
    # shoulda matchers
    it { should have_many(:rental_charges) }
    it { should have_many(:rentals).through(:rental_charges) }

    it { should validate_presence_of(:name) }
    it { should ensure_length_of(:name).is_at_most(20) }

    it { should validate_presence_of(:kind) }
    it { should validate_numericality_of(:kind) }
    it { should allow_value(Charge::FixedType).for(:kind) }
    it { should allow_value(Charge::VariableType).for(:kind) }
    it { should_not allow_value(14).for(:kind) }
  end
end
