require 'spec_helper'

describe Quiz do
  it {should belong_to :student}
  it {should have_many(:questions).through(:quizzes_questions)}
end
