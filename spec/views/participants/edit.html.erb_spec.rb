require 'spec_helper'

describe "participants/edit" do
  before(:each) do
    @participant = assign(:participant, stub_model(Participant,
      :name => "MyString",
      :email => "MyString",
      :response => ""
    ))
  end

  it "renders the edit participant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => participants_path(@participant), :method => "post" do
      assert_select "input#participant_name", :name => "participant[name]"
      assert_select "input#participant_email", :name => "participant[email]"
      assert_select "input#participant_response", :name => "participant[response]"
    end
  end
end
