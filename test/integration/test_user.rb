require "test_helper.rb"

class UserTest < ActiveSupport::TestCase
	test "test for user input firstName" do
		user = User.new
		assert !user.save
		assert !user.errors[:first_name].empty?
	end

	test "validate presence of last name of user" do
		user = User.new
		assert !user.save
		assert !user.errors[:last_name].empty?
	end

	test "validates presence of username for user" do
		user = User.new
		assert !user.save
		assert !user.errors[:username].empty?
	end

end