require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "valid record" do
		new_user = User.new
		new_user.name = "Jonathan"
		new_user.email = "jwood5@memphis.edu"
		new_user.password = "password"
		assert new_user.valid?
	end

	test "no name" do
		new_user = User.new
		new_user.email = "jwood5@memphis.edu"
		new_user.password = "password"
		assert_not new_user.valid?
	end

	test "no email" do
		new_user = User.new
		new_user.name = "Jonathan"
		new_user.password = "password"
		assert_not new_user.valid?
	end

	test "no password" do
		new_user = User.new
		new_user.name = "Jonathan"
		new_user.email = "jwood5@memphis.edu"
		assert_not new_user.valid?
	end
end
