require 'spec_helper'

describe "yellowpages/show" do
  before(:each) do
    @yellowpage = assign(:yellowpage, stub_model(Yellowpage))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
