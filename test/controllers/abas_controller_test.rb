require "test_helper"

class AbasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abas_index_url
    assert_response :success
  end

  test "should get show" do
    get abas_show_url
    assert_response :success
  end

  test "should get new" do
    get abas_new_url
    assert_response :success
  end

  test "should get create" do
    get abas_create_url
    assert_response :success
  end

  test "should get edit" do
    get abas_edit_url
    assert_response :success
  end

  test "should get update" do
    get abas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get abas_destroy_url
    assert_response :success
  end
end
