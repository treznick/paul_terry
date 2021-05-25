require "application_system_test_case"

class TraumatizedChildrenTest < ApplicationSystemTestCase
  setup do
    @traumatized_child = traumatized_children(:one)
  end

  test "visiting the index" do
    visit traumatized_children_url
    assert_selector "h1", text: "Traumatized Children"
  end

  test "creating a Traumatized child" do
    visit traumatized_children_url
    click_on "New Traumatized Child"

    fill_in "Name", with: @traumatized_child.name
    click_on "Create Traumatized child"

    assert_text "Traumatized child was successfully created"
    click_on "Back"
  end

  test "updating a Traumatized child" do
    visit traumatized_children_url
    click_on "Edit", match: :first

    fill_in "Name", with: @traumatized_child.name
    click_on "Update Traumatized child"

    assert_text "Traumatized child was successfully updated"
    click_on "Back"
  end

  test "destroying a Traumatized child" do
    visit traumatized_children_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traumatized child was successfully destroyed"
  end
end
