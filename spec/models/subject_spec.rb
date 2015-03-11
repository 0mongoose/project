require 'spec_helper'

describe Subject do
  
  it {should validate_presence_of :name}


  it "should return basic if it doesn't have a parent" do
  	subject = FactoryGirl.build(:subject, :subject_id => nil)
    expect(subject.is_basic?).to eq(true) 
  end

  it "should return not basic if it has a parent" do
  	subject1 = FactoryGirl.create(:subject)
  	subject2 = FactoryGirl.build(:subject, :subject_id => subject1.id)
  	expect(subject2.is_basic?).to eq(false)
  end
end
