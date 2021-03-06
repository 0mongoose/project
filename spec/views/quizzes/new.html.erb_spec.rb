require 'spec_helper'

describe "quizzes/new" do
  before(:each) do
    assign(:quiz, stub_model(Quiz,
      :result => 1.5,
      :no_of_questions => 1
    ).as_new_record)
  end

  it "renders new quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quizzes_path, "post" do
      assert_select "input#quiz_result[name=?]", "quiz[result]"
      assert_select "input#quiz_no_of_questions[name=?]", "quiz[no_of_questions]"
    end
  end
end
