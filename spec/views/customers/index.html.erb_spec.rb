require 'spec_helper'

describe "customers/index.html.erb" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :document => "Document",
        :phone => "Phone",
        :cell_phone => "Cell Phone",
        :active => false
      ),
      stub_model(Customer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :document => "Document",
        :phone => "Phone",
        :cell_phone => "Cell Phone",
        :active => false
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Document".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
