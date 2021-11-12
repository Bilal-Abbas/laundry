require 'test_helper'

class ServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get shirts" do
    get service_shirts_url
    assert_response :success
  end

  test "should get dry_cleaning" do
    get service_dry_cleaning_url
    assert_response :success
  end

  test "should get household_linen" do
    get service_household_linen_url
    assert_response :success
  end

  test "should get repairs_alterations" do
    get service_repairs_alterations_url
    assert_response :success
  end

  test "should get wedding_dress_cleaning" do
    get service_wedding_dress_cleaning_url
    assert_response :success
  end

  test "should get leather_suede" do
    get service_leather_suede_url
    assert_response :success
  end

  test "should get laundry_service" do
    get service_laundry_service_url
    assert_response :success
  end

  test "should get collection_delivery" do
    get service_collection_delivery_url
    assert_response :success
  end

end
