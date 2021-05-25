require "application_system_test_case"

class HorrifyinglyLargeInsectsTest < ApplicationSystemTestCase
  setup do
    @horrifyingly_large_insect = horrifyingly_large_insects(:one)
  end

  test "visiting the index" do
    visit horrifyingly_large_insects_url
    assert_selector "h1", text: "Horrifyingly Large Insects"
  end

  test "creating a Horrifyingly large insect" do
    visit horrifyingly_large_insects_url
    click_on "New Horrifyingly Large Insect"

    fill_in "Name", with: @horrifyingly_large_insect.name
    fill_in "Traumatized child", with: @horrifyingly_large_insect.traumatized_child_id
    click_on "Create Horrifyingly large insect"

    assert_text "Horrifyingly large insect was successfully created"
    click_on "Back"
  end

  test "updating a Horrifyingly large insect" do
    visit horrifyingly_large_insects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @horrifyingly_large_insect.name
    fill_in "Traumatized child", with: @horrifyingly_large_insect.traumatized_child_id
    click_on "Update Horrifyingly large insect"

    assert_text "Horrifyingly large insect was successfully updated"
    click_on "Back"
  end

  test "destroying a Horrifyingly large insect" do
    visit horrifyingly_large_insects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Horrifyingly large insect was successfully destroyed"
  end
end
