require "test_helper"

class SessionControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_response :success
  end

  def test_create
    get :create
    assert_response :success
  end

  def test_delete
    get :delete
    assert_response :success
  end

end
