require 'spec_helper'

describe "properties/show.html.erb" do
  before(:each) do
    @property = assign(:property, stub_model(Property,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
