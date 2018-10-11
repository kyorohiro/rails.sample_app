require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    assert_response :success
  end

def current_user
  if session[:user_id]
    User.find_by(id: session[:user_id])
  end
end
end
