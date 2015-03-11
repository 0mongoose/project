require 'spec_helper'

describe "sprojects/index" do
  before(:each) do
    assign(:sprojects, [
      stub_model(Sproject,
        :name => "Name",
        :description => "MyText",
        :mode => 1
      ),
      stub_model(Sproject,
        :name => "Name",
        :description => "MyText",
        :mode => 1
      )
    ])
  end

  it "renders a list of sprojects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
