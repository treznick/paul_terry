require "application_system_test_case"

class HollywoodesqueNeurosesTest < ApplicationSystemTestCase
  setup do
    @hollywoodesque_neurose = hollywoodesque_neuroses(:one)
  end

  test "visiting the index" do
    visit hollywoodesque_neuroses_url
    assert_selector "h1", text: "Hollywoodesque Neuroses"
  end

  test "creating a Hollywoodesque neurose" do
    visit hollywoodesque_neuroses_url
    click_on "New Hollywoodesque Neurose"

    fill_in "Child actor", with: @hollywoodesque_neurose.child_actor_id
    fill_in "Name", with: @hollywoodesque_neurose.name
    click_on "Create Hollywoodesque neurose"

    assert_text "Hollywoodesque neurose was successfully created"
    click_on "Back"
  end

  test "updating a Hollywoodesque neurose" do
    visit hollywoodesque_neuroses_url
    click_on "Edit", match: :first

    fill_in "Child actor", with: @hollywoodesque_neurose.child_actor_id
    fill_in "Name", with: @hollywoodesque_neurose.name
    click_on "Update Hollywoodesque neurose"

    assert_text "Hollywoodesque neurose was successfully updated"
    click_on "Back"
  end

  test "destroying a Hollywoodesque neurose" do
    visit hollywoodesque_neuroses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hollywoodesque neurose was successfully destroyed"
  end
end
