require "application_system_test_case"

class CruelAuntsTest < ApplicationSystemTestCase
  setup do
    @cruel_aunt = cruel_aunts(:one)
  end

  test "visiting the index" do
    visit cruel_aunts_url
    assert_selector "h1", text: "Cruel Aunts"
  end

  test "creating a Cruel aunt" do
    visit cruel_aunts_url
    click_on "New Cruel Aunt"

    fill_in "Cruel aunt", with: @cruel_aunt.cruel_aunt_id
    fill_in "Name", with: @cruel_aunt.name
    click_on "Create Cruel aunt"

    assert_text "Cruel aunt was successfully created"
    click_on "Back"
  end

  test "updating a Cruel aunt" do
    visit cruel_aunts_url
    click_on "Edit", match: :first

    fill_in "Cruel aunt", with: @cruel_aunt.cruel_aunt_id
    fill_in "Name", with: @cruel_aunt.name
    click_on "Update Cruel aunt"

    assert_text "Cruel aunt was successfully updated"
    click_on "Back"
  end

  test "destroying a Cruel aunt" do
    visit cruel_aunts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cruel aunt was successfully destroyed"
  end
end
