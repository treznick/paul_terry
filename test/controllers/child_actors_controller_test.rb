require "test_helper"

class ChildActorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child_actor = child_actors(:one)
  end

  test "should get index" do
    get child_actors_url
    assert_response :success
  end

  test "should get new" do
    get new_child_actor_url
    assert_response :success
  end

  test "should create child_actor" do
    assert_difference('ChildActor.count') do
      post child_actors_url, params: { child_actor: { name: @child_actor.name, traumatized_child: @child_actor.traumatized_child } }
    end

    assert_redirected_to child_actor_url(ChildActor.last)
  end

  test "should show child_actor" do
    get child_actor_url(@child_actor)
    assert_response :success
  end

  test "should get edit" do
    get edit_child_actor_url(@child_actor)
    assert_response :success
  end

  test "should update child_actor" do
    patch child_actor_url(@child_actor), params: { child_actor: { name: @child_actor.name, traumatized_child: @child_actor.traumatized_child } }
    assert_redirected_to child_actor_url(@child_actor)
  end

  test "should destroy child_actor" do
    assert_difference('ChildActor.count', -1) do
      delete child_actor_url(@child_actor)
    end

    assert_redirected_to child_actors_url
  end
end
