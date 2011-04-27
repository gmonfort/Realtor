require 'spec_helper'

describe "charges/index.html.erb" do
  before(:each) do
    assign(:charges, [
      stub_model(Charge,
        :name => "Name",
        :code => "Code",
        :amount => "9.99",
        :kind => 1
      ),
      stub_model(Charge,
        :name => "Name",
        :code => "Code",
        :amount => "9.99",
        :kind => 1
      )
    ])
  end

  it "renders a list of charges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
