require 'spec_helper'

describe "rentals/index.html.erb" do
  before(:each) do
    assign(:rentals, [
      stub_model(Rental,
        :start_date => Date.today.to_s(:db),
        :mode => 1
      ),
      stub_model(Rental,
        :start_date => Date.today.to_s(:db),
        :mode => 1
      )
    ])
  end

  it "renders a list of rentals" do
    render
    # 2 rows + heading
    assert_select "table > tr", :count => 3
  end
end
