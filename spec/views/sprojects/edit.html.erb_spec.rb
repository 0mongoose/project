require 'spec_helper'

describe "sprojects/edit" do
  before(:each) do
    @sproject = assign(:sproject, stub_model(Sproject,
      :name => "MyString",
      :description => "MyText",
      :mode => 1
    ))
  end

  it "renders the edit sproject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sproject_path(@sproject), "post" do
      assert_select "input#sproject_name[name=?]", "sproject[name]"
      assert_select "textarea#sproject_description[name=?]", "sproject[description]"
      assert_select "input#sproject_mode[name=?]", "sproject[mode]"
    end
  end
end
