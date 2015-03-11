require 'spec_helper'

describe "milestones/new" do
  before(:each) do
    assign(:milestone, stub_model(Milestone,
      :name => "MyString",
      :difficult => 1
    ).as_new_record)
  end

  it "renders new milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", milestones_path, "post" do
      assert_select "input#milestone_name[name=?]", "milestone[name]"
      assert_select "input#milestone_difficult[name=?]", "milestone[difficult]"
    end
  end
end
