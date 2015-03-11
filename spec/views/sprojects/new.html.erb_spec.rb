require 'spec_helper'

describe "sprojects/new" do
  before(:each) do
    assign(:sproject, stub_model(Sproject,
      :name => "MyString",
      :description => "MyText",
      :mode => 1
    ).as_new_record)
  end

  it "renders new sproject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprojects_path, "post" do
      assert_select "input#sproject_name[name=?]", "sproject[name]"
      assert_select "textarea#sproject_description[name=?]", "sproject[description]"
      assert_select "input#sproject_mode[name=?]", "sproject[mode]"
    end
  end
end
