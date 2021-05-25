require "test_helper"

class CruelAuntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cruel_aunt = cruel_aunts(:one)
  end

  test "should get index" do
    get cruel_aunts_url
    assert_response :success
  end

  test "should get new" do
    get new_cruel_aunt_url
    assert_response :success
  end

  test "should create cruel_aunt" do
    assert_difference('CruelAunt.count') do
      post cruel_aunts_url, params: { cruel_aunt: { cruel_aunt_id: @cruel_aunt.cruel_aunt_id, name: @cruel_aunt.name } }
    end

    assert_redirected_to cruel_aunt_url(CruelAunt.last)
  end

  test "should show cruel_aunt" do
    get cruel_aunt_url(@cruel_aunt)
    assert_response :success
  end

  test "should get edit" do
    get edit_cruel_aunt_url(@cruel_aunt)
    assert_response :success
  end

  test "should update cruel_aunt" do
    patch cruel_aunt_url(@cruel_aunt), params: { cruel_aunt: { cruel_aunt_id: @cruel_aunt.cruel_aunt_id, name: @cruel_aunt.name } }
    assert_redirected_to cruel_aunt_url(@cruel_aunt)
  end

  test "should destroy cruel_aunt" do
    assert_difference('CruelAunt.count', -1) do
      delete cruel_aunt_url(@cruel_aunt)
    end

    assert_redirected_to cruel_aunts_url
  end
end
