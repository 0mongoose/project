require 'spec_helper'

describe "milestones/show" do
  before(:each) do
    @milestone = assign(:milestone, stub_model(Milestone,
      :name => "Name",
      :difficult => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
