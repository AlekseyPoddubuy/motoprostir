require 'test_helper'

class BikepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bikepost = bikeposts(:one)
  end

  test "should get index" do
    get bikeposts_url
    assert_response :success
  end

  test "should get new" do
    get new_bikepost_url
    assert_response :success
  end

  test "should create bikepost" do
    assert_difference('Bikepost.count') do
      post bikeposts_url, params: { bikepost: { address: @bikepost.address, city: @bikepost.city, description: @bikepost.description, oblast: @bikepost.oblast, title: @bikepost.title } }
    end

    assert_redirected_to bikepost_url(Bikepost.last)
  end

  test "should show bikepost" do
    get bikepost_url(@bikepost)
    assert_response :success
  end

  test "should get edit" do
    get edit_bikepost_url(@bikepost)
    assert_response :success
  end

  test "should update bikepost" do
    patch bikepost_url(@bikepost), params: { bikepost: { address: @bikepost.address, city: @bikepost.city, description: @bikepost.description, oblast: @bikepost.oblast, title: @bikepost.title } }
    assert_redirected_to bikepost_url(@bikepost)
  end

  test "should destroy bikepost" do
    assert_difference('Bikepost.count', -1) do
      delete bikepost_url(@bikepost)
    end

    assert_redirected_to bikeposts_url
  end
end
