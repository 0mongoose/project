require 'spec_helper'

describe "sprojects/show" do
  before(:each) do
    @sproject = assign(:sproject, stub_model(Sproject,
      :name => "Name",
      :description => "MyText",
      :mode => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
