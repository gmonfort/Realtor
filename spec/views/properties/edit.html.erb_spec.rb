require 'spec_helper'

describe "properties/edit.html.erb" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :name => "MyString"
    ))
  end

  it "renders the edit property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => properties_path(@property), :method => "post" do
      assert_select "input#property_name", :name => "property[name]"
    end
  end
end
