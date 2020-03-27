require "application_system_test_case"

class GymClassesTest < ApplicationSystemTestCase
  setup do
    @gym_class = gym_classes(:one)
  end

  test "visiting the index" do
    visit gym_classes_url
    assert_selector "h1", text: "Gym Classes"
  end

  test "creating a Gym class" do
    visit gym_classes_url
    click_on "New Gym Class"

    fill_in "Date", with: @gym_class.Date
    fill_in "Ptname", with: @gym_class.PTName
    fill_in "Time", with: @gym_class.Time
    fill_in "Type", with: @gym_class.Type
    click_on "Create Gym class"

    assert_text "Gym class was successfully created"
    click_on "Back"
  end

  test "updating a Gym class" do
    visit gym_classes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @gym_class.Date
    fill_in "Ptname", with: @gym_class.PTName
    fill_in "Time", with: @gym_class.Time
    fill_in "Type", with: @gym_class.Type
    click_on "Update Gym class"

    assert_text "Gym class was successfully updated"
    click_on "Back"
  end

  test "destroying a Gym class" do
    visit gym_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gym class was successfully destroyed"
  end
end
