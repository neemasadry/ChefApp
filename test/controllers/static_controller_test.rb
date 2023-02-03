require "test_helper"

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get static_index_url
    assert_response :success
  end

  test "should get about" do
    get static_about_url
    assert_response :success
  end

  test "should get pricing" do
    get static_pricing_url
    assert_response :success
  end

  test "should get privacy" do
    get static_privacy_url
    assert_response :success
  end

  test "should get terms" do
    get static_terms_url
    assert_response :success
  end
end
