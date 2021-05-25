require "application_system_test_case"

class ChildActorsTest < ApplicationSystemTestCase
  setup do
    @child_actor = child_actors(:one)
  end

  test "visiting the index" do
    visit child_actors_url
    assert_selector "h1", text: "Child Actors"
  end

  test "creating a Child actor" do
    visit child_actors_url
    click_on "New Child Actor"

    fill_in "Name", with: @child_actor.name
    fill_in "Traumatized child", with: @child_actor.traumatized_child
    click_on "Create Child actor"

    assert_text "Child actor was successfully created"
    click_on "Back"
  end

  test "updating a Child actor" do
    visit child_actors_url
    click_on "Edit", match: :first

    fill_in "Name", with: @child_actor.name
    fill_in "Traumatized child", with: @child_actor.traumatized_child
    click_on "Update Child actor"

    assert_text "Child actor was successfully updated"
    click_on "Back"
  end

  test "destroying a Child actor" do
    visit child_actors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Child actor was successfully destroyed"
  end
end
