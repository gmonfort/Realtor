require 'spec_helper'

describe RentalCharge do
  fixtures :all

  before { @rc = RentalCharge.new }

  subject { @rc }

  context "when brand new" do
    # shoulda matchers
    it { should belong_to(:rental) }
    it { should belong_to(:charge) }

    it { should validate_presence_of(:amount) }
    it { should validate_numericality_of(:amount) }
    it { should allow_value(14).for(:amount) }
    it { should allow_value(14.00).for(:amount) }
    it { should allow_value(0).for(:amount) }
    it { should allow_value(0.00).for(:amount) }

    it { should allow_value("14").for(:amount) }
    it { should allow_value("14.00").for(:amount) }

    it { should_not allow_value("1k").for(:amount) }
  end
end
