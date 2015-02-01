require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :content => "MyText",
      :type => "",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "textarea#question_content[name=?]", "question[content]"
      assert_select "input#question_type[name=?]", "question[type]"
      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
