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

	test "validates the uniqueness of the username for user" do
		# user = User.new
		# user.username = "ehsan5505"
		# user.email = "ehsan5505@gmil.com"
		# user.first_name = "Ehsan"
		# user.last_name = "Rafeeque"
		# user.password = "ehsan5505"
		# user.password_confirmation = "ehsan5505"
		# # user.username = "ehsan5505"
		# assert user.save()
		# puts user.errors.inspect
		# assert user.errors[:username].empty?
	end

end