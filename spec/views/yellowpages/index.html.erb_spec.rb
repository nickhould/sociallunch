require 'spec_helper'

describe "yellowpages/index" do
  before(:each) do
    assign(:yellowpages, [
      stub_model(Yellowpage),
      stub_model(Yellowpage)
    ])
  end

  it "renders a list of yellowpages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
