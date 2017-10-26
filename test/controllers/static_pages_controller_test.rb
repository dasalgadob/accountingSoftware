require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Software Contable"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get home_url
    assert_response :success
    assert_select "title", "Home | "+ @base_title

  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | "+ @base_title
  end

  test "should get about" do
    get about_url
    assert_response :success #200 status code
    assert_select "title", "About | "+ @base_title   #Assert content of element in the first argument
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | "+ @base_title
  end

end
