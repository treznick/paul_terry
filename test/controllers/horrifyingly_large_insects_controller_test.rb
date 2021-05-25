require "test_helper"

class HorrifyinglyLargeInsectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @horrifyingly_large_insect = horrifyingly_large_insects(:one)
  end

  test "should get index" do
    get horrifyingly_large_insects_url
    assert_response :success
  end

  test "should get new" do
    get new_horrifyingly_large_insect_url
    assert_response :success
  end

  test "should create horrifyingly_large_insect" do
    assert_difference('HorrifyinglyLargeInsect.count') do
      post horrifyingly_large_insects_url, params: { horrifyingly_large_insect: { name: @horrifyingly_large_insect.name, traumatized_child_id: @horrifyingly_large_insect.traumatized_child_id } }
    end

    assert_redirected_to horrifyingly_large_insect_url(HorrifyinglyLargeInsect.last)
  end

  test "should show horrifyingly_large_insect" do
    get horrifyingly_large_insect_url(@horrifyingly_large_insect)
    assert_response :success
  end

  test "should get edit" do
    get edit_horrifyingly_large_insect_url(@horrifyingly_large_insect)
    assert_response :success
  end

  test "should update horrifyingly_large_insect" do
    patch horrifyingly_large_insect_url(@horrifyingly_large_insect), params: { horrifyingly_large_insect: { name: @horrifyingly_large_insect.name, traumatized_child_id: @horrifyingly_large_insect.traumatized_child_id } }
    assert_redirected_to horrifyingly_large_insect_url(@horrifyingly_large_insect)
  end

  test "should destroy horrifyingly_large_insect" do
    assert_difference('HorrifyinglyLargeInsect.count', -1) do
      delete horrifyingly_large_insect_url(@horrifyingly_large_insect)
    end

    assert_redirected_to horrifyingly_large_insects_url
  end
end
