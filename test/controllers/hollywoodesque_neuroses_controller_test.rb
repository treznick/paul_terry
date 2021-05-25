require "test_helper"

class HollywoodesqueNeurosesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hollywoodesque_neurose = hollywoodesque_neuroses(:one)
  end

  test "should get index" do
    get hollywoodesque_neuroses_url
    assert_response :success
  end

  test "should get new" do
    get new_hollywoodesque_neurose_url
    assert_response :success
  end

  test "should create hollywoodesque_neurose" do
    assert_difference('HollywoodesqueNeurose.count') do
      post hollywoodesque_neuroses_url, params: { hollywoodesque_neurose: { child_actor_id: @hollywoodesque_neurose.child_actor_id, name: @hollywoodesque_neurose.name } }
    end

    assert_redirected_to hollywoodesque_neurose_url(HollywoodesqueNeurose.last)
  end

  test "should show hollywoodesque_neurose" do
    get hollywoodesque_neurose_url(@hollywoodesque_neurose)
    assert_response :success
  end

  test "should get edit" do
    get edit_hollywoodesque_neurose_url(@hollywoodesque_neurose)
    assert_response :success
  end

  test "should update hollywoodesque_neurose" do
    patch hollywoodesque_neurose_url(@hollywoodesque_neurose), params: { hollywoodesque_neurose: { child_actor_id: @hollywoodesque_neurose.child_actor_id, name: @hollywoodesque_neurose.name } }
    assert_redirected_to hollywoodesque_neurose_url(@hollywoodesque_neurose)
  end

  test "should destroy hollywoodesque_neurose" do
    assert_difference('HollywoodesqueNeurose.count', -1) do
      delete hollywoodesque_neurose_url(@hollywoodesque_neurose)
    end

    assert_redirected_to hollywoodesque_neuroses_url
  end
end
