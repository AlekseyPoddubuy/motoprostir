require 'test_helper'

class PartsearchControllerTest < ActionDispatch::IntegrationTest
  test "should get brand_id" do
    get partsearch_brand_id_url
    assert_response :success
  end

  test "should get motorcycle_id" do
    get partsearch_motorcycle_id_url
    assert_response :success
  end

  test "should get detail_id" do
    get partsearch_detail_id_url
    assert_response :success
  end

end
