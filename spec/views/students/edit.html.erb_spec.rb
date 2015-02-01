require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :level => 1,
      :time => 1.5,
      :user_id => ""
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_level[name=?]", "student[level]"
      assert_select "input#student_time[name=?]", "student[time]"
      assert_select "input#student_user_id[name=?]", "student[user_id]"
    end
  end
end
