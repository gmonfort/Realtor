require 'spec_helper'

describe "charges/show.html.erb" do
  before(:each) do
    @charge = assign(:charge, stub_model(Charge,
      :name => "Name",
      :code => "Code",
      :amount => "9.99",
      :kind => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
