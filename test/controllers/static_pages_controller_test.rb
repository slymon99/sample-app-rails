require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_url
    assert_response :success
  end

  
  test "should get home" do
    get root_url
    assert_select "title", "Home"
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_select "title", "Help"
    assert_response :success
  end
  
  test "should get about" do
    get about_path
    assert_select "title", "About"
    assert_response :success
  end

end
