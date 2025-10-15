require "test_helper"

class Admin::SermonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sermons_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_sermons_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_sermons_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sermons_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_sermons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_sermons_destroy_url
    assert_response :success
  end

  test "should get results" do
    get admin_sermons_results_url
    assert_response :success
  end

  test "should get qr" do
    get admin_sermons_qr_url
    assert_response :success
  end

  test "should get export_csv" do
    get admin_sermons_export_csv_url
    assert_response :success
  end
end
