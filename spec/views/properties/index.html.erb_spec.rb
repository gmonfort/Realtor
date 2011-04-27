require 'spec_helper'

describe "properties/index.html.erb" do
  before(:each) do
    assign(:properties, [
      stub_model(Property,
        :name => "Name"
      ),
      stub_model(Property,
        :name => "Name"
      )
    ])
  end

  it "renders a list of properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
