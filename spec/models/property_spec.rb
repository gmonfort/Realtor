require 'spec_helper'

describe Property do
  fixtures :all

  before { @property = Property.new }

  subject { @property }

  context "when brand new" do
    # shoulda matchers
    it { should belong_to(:owner) }
    it { should validate_presence_of(:name) }
    it { should ensure_length_of(:name).is_at_most(50) }
  end

end

