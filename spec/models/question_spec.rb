require 'spec_helper'

describe Question do
  it {should have_many(:topics).through(:topics_questions)}
  it {should validate_presence_of(:content)}
  it {should validate_presence_of(:type)}
end
