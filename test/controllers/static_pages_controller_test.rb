require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    # GET /static_pages/home
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    # GET /static_pages/help
    get help_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    # GET /static_pages/about
    get about_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "shoud get contact" do
    # GET /contact_pages/about
    get contact_path
    assert_response :success
    assert_select "title", "contact | Ruby on Rails Tutorial Sample App"
  end
end
