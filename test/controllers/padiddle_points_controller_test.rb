require 'test_helper'

class PadiddlePointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padiddle_point = padiddle_points(:one)
  end

  test "should get index" do
    get padiddle_points_url
    assert_response :success
  end

  test "should get new" do
    get new_padiddle_point_url
    assert_response :success
  end

  test "should create padiddle_point" do
    assert_difference('PadiddlePoint.count') do
      post padiddle_points_url, params: { padiddle_point: {  } }
    end

    assert_redirected_to padiddle_point_url(PadiddlePoint.last)
  end

  test "should show padiddle_point" do
    get padiddle_point_url(@padiddle_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_padiddle_point_url(@padiddle_point)
    assert_response :success
  end

  test "should update padiddle_point" do
    patch padiddle_point_url(@padiddle_point), params: { padiddle_point: {  } }
    assert_redirected_to padiddle_point_url(@padiddle_point)
  end

  test "should destroy padiddle_point" do
    assert_difference('PadiddlePoint.count', -1) do
      delete padiddle_point_url(@padiddle_point)
    end

    assert_redirected_to padiddle_points_url
  end
end
