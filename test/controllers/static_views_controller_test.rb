require 'test_helper'

class StaticViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_views_home_url
    assert_response :success
  end

  test "should get team" do
    get static_views_team_url
    assert_response :success
  end

  test "should get contact" do
    get static_views_contact_url
    assert_response :success
  end

end
