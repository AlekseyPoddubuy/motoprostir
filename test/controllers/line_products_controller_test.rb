require 'test_helper'

class LineProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_product = line_products(:one)
  end

  test "should get index" do
    get line_products_url
    assert_response :success
  end

  test "should get new" do
    get new_line_product_url
    assert_response :success
  end

  test "should create line_product" do
    assert_difference('LineProduct.count') do
      post line_products_url, params: { line_product: { cart_id: @line_product.cart_id, item_id: @line_product.item_id } }
    end

    assert_redirected_to line_product_url(LineProduct.last)
  end

  test "should show line_product" do
    get line_product_url(@line_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_product_url(@line_product)
    assert_response :success
  end

  test "should update line_product" do
    patch line_product_url(@line_product), params: { line_product: { cart_id: @line_product.cart_id, item_id: @line_product.item_id } }
    assert_redirected_to line_product_url(@line_product)
  end

  test "should destroy line_product" do
    assert_difference('LineProduct.count', -1) do
      delete line_product_url(@line_product)
    end

    assert_redirected_to line_products_url
  end
end
