require 'spec_helper'

describe "rentals/show.html.erb" do
  before(:each) do
    @rental = assign(:rental, stub_model(Rental,
      :start_date => Date.today.to_s(:db),
      :mode => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
