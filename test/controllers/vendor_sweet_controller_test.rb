require 'test_helper'

class VendorSweetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendor_sweet_index_url
    assert_response :success
  end

  test "should get show" do
    get vendor_sweet_show_url
    assert_response :success
  end

  test "should get new" do
    get vendor_sweet_new_url
    assert_response :success
  end

  test "should get create" do
    get vendor_sweet_create_url
    assert_response :success
  end

end
