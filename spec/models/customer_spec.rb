require 'spec_helper'

describe Customer do
  before do 
    @customer = Customer.new
  end

  subject { @customer }

  context "when brand new" do
    before do
      # so as to check uniqueness of last_name
      Customer.create(:last_name => "last name", :phone => "555")
    end

    after do
      Customer.find_by_last_name("last name").destroy
      # Customer.destroy_all
    end

    specify { @customer.active.should be_true }

    # shoulda matchers
    it { should have_many(:properties) }

    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:last_name) }
    it { should validate_uniqueness_of(:last_name) }
  end
end
