require 'spec_helper'

describe "yellowpages/edit" do
  before(:each) do
    @yellowpage = assign(:yellowpage, stub_model(Yellowpage))
  end

  it "renders the edit yellowpage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => yellowpages_path(@yellowpage), :method => "post" do
    end
  end
end
