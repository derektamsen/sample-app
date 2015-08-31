require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "display user profile" do
    log_in_as(@user)
    get user_path(@user)
    assert_template 'users/show'
    assert_select "title", "#{@user.name} | Ruby on Rails Tutorial Sample App"
  end
end
