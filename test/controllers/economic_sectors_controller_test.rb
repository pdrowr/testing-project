require 'test_helper'

class EconomicSectorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get economic_sectors_index_url
    assert_response :success
  end

  test "should get new" do
    get economic_sectors_new_url
    assert_response :success
  end

  test "should get create" do
    get economic_sectors_create_url
    assert_response :success
  end

  test "should get delete" do
    get economic_sectors_delete_url
    assert_response :success
  end

end
