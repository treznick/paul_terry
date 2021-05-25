require "test_helper"

class TraumatizedChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traumatized_child = traumatized_children(:one)
  end

  test "should get index" do
    get traumatized_children_url
    assert_response :success
  end

  test "should get new" do
    get new_traumatized_child_url
    assert_response :success
  end

  test "should create traumatized_child" do
    assert_difference('TraumatizedChild.count') do
      post traumatized_children_url, params: { traumatized_child: { name: @traumatized_child.name } }
    end

    assert_redirected_to traumatized_child_url(TraumatizedChild.last)
  end

  test "should show traumatized_child" do
    get traumatized_child_url(@traumatized_child)
    assert_response :success
  end

  test "should get edit" do
    get edit_traumatized_child_url(@traumatized_child)
    assert_response :success
  end

  test "should update traumatized_child" do
    patch traumatized_child_url(@traumatized_child), params: { traumatized_child: { name: @traumatized_child.name } }
    assert_redirected_to traumatized_child_url(@traumatized_child)
  end

  test "should destroy traumatized_child" do
    assert_difference('TraumatizedChild.count', -1) do
      delete traumatized_child_url(@traumatized_child)
    end

    assert_redirected_to traumatized_children_url
  end
end
