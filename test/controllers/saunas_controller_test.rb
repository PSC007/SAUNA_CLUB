require 'test_helper'

class SaunasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saunas_index_url
    assert_response :success
  end

  test "should get show" do
    get saunas_show_url
    assert_response :success
  end

  test "should get new" do
    get saunas_new_url
    assert_response :success
  end

  test "should get create" do
    get saunas_create_url
    assert_response :success
  end

  test "should get edit" do
    get saunas_edit_url
    assert_response :success
  end

  test "should get update" do
    get saunas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get saunas_destroy_url
    assert_response :success
  end

end
