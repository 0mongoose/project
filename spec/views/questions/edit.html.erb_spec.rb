require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :content => "MyText",
      :type => "",
      :user_id => 1
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "textarea#question_content[name=?]", "question[content]"
      assert_select "input#question_type[name=?]", "question[type]"
      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
