require "test_helper"

class JobOffersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_offers_index_url
    assert_response :success
  end

  test "should get show" do
    get job_offers_show_url
    assert_response :success
  end

  test "should get new" do
    get job_offers_new_url
    assert_response :success
  end

  test "should get create" do
    get job_offers_create_url
    assert_response :success
  end

  test "should get edit" do
    get job_offers_edit_url
    assert_response :success
  end

  test "should get update" do
    get job_offers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get job_offers_destroy_url
    assert_response :success
  end
end
