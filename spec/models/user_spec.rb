require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "testing user validate for presence" do

  	it "check the user first_name presence" do
  		user = User.new
  		# user.first_name = "ehsan"
  		allow(user.save())
  		expect(user)
  		# user.save()
  		expect(user.errors[:first_name].empty?).to be false
  	end

  	it "check the last name of the user to be present" do
  		user = User.new 
  		allow(user.save())
  		expect(user.errors[:last_name].empty?).to be false
  	end

  	it "check the username of the user to be present" do
  		user = User.new
  		allow(user.save())
  		expect(user.errors[:username].empty?).to be false
  	end


  end

end
