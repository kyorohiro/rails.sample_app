require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_url
    assert_response :success
  end

 test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "kyorohiro",
                                         email: "kyorohiro@gmail.com",
                                         password:              "miraigan",
                                         password_confirmation: "miraigan" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
