require 'test_helper'

class MotorcyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @motorcycle = motorcycles(:one)
  end

  test "should get index" do
    get motorcycles_url
    assert_response :success
  end

  test "should get new" do
    get new_motorcycle_url
    assert_response :success
  end

  test "should create motorcycle" do
    assert_difference('Motorcycle.count') do
      post motorcycles_url, params: { motorcycle: { slug: @motorcycle.slug, title: @motorcycle.title } }
    end

    assert_redirected_to motorcycle_url(Motorcycle.last)
  end

  test "should show motorcycle" do
    get motorcycle_url(@motorcycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_motorcycle_url(@motorcycle)
    assert_response :success
  end

  test "should update motorcycle" do
    patch motorcycle_url(@motorcycle), params: { motorcycle: { slug: @motorcycle.slug, title: @motorcycle.title } }
    assert_redirected_to motorcycle_url(@motorcycle)
  end

  test "should destroy motorcycle" do
    assert_difference('Motorcycle.count', -1) do
      delete motorcycle_url(@motorcycle)
    end

    assert_redirected_to motorcycles_url
  end
end
