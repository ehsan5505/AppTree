require 'rails_helper'

RSpec.describe Status, type: :model do

  describe "testing the status model" do

  	it "check the status comment to be present" do
  		status = Status.new
  		expect(status.save).to be_falsy
  		expect(status.errors[:comment].empty?).to be false
  	end

  	it "check the length of comment must be greater than 2" do
  		status = Status.new
  		status.comment = "S"
  		expect(status.save()).to be_falsy
  		expect(status.errors[:comment].empty?).to be false
  	end

  	it "check the user id to be present" do
  		status = Status.new
  		status.comment = "hello"
  		expect(status.save()).to be_falsy
  		expect(status.errors[:user_id].empty?).to be false
  	end

  end
end
