require 'spec_helper'

describe "quizzes/edit" do
  before(:each) do
    @quiz = assign(:quiz, stub_model(Quiz,
      :result => 1.5,
      :no_of_questions => 1
    ))
  end

  it "renders the edit quiz form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do
      assert_select "input#quiz_result[name=?]", "quiz[result]"
      assert_select "input#quiz_no_of_questions[name=?]", "quiz[no_of_questions]"
    end
  end
end
