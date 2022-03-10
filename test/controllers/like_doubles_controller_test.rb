require 'test_helper'

class LikeDoublesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like_double = like_doubles(:one)
  end

  test "should get index" do
    get like_doubles_url
    assert_response :success
  end

  test "should get new" do
    get new_like_double_url
    assert_response :success
  end

  test "should create like_double" do
    assert_difference('LikeDouble.count') do
      post like_doubles_url, params: { like_double: { name: @like_double.name } }
    end

    assert_redirected_to like_double_url(LikeDouble.last)
  end

  test "should show like_double" do
    get like_double_url(@like_double)
    assert_response :success
  end

  test "should get edit" do
    get edit_like_double_url(@like_double)
    assert_response :success
  end

  test "should update like_double" do
    patch like_double_url(@like_double), params: { like_double: { name: @like_double.name } }
    assert_redirected_to like_double_url(@like_double)
  end

  test "should destroy like_double" do
    assert_difference('LikeDouble.count', -1) do
      delete like_double_url(@like_double)
    end

    assert_redirected_to like_doubles_url
  end
end
