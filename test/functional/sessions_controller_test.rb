require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    bubba = users(:one)
    post :create, name: bubba.name, password: 'password'
    assert_redirected_to admin_url
    assert_equal bubba.id, session[:user_id]
  end
  
  test "should fail login" do
    bubba = users(:one)
    post :create, name: bubba.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    get :destroy
    assert_redirected_to login_url
  end

end
