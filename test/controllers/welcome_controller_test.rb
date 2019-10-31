require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get identification" do
    get welcome_identification_url
    assert_response :success
  end

  test "should get connected" do
    get welcome_connected_url
    assert_response :success
  end

  test "should get home" do
    get welcome_home_url
    assert_response :success
  end

  test "should get gossip" do
    get welcome_gossip_url
    assert_response :success
  end

  test "should get user" do
    get welcome_user_url
    assert_response :success
  end

end
