require "application_system_test_case"

class GymClassFinalsTest < ApplicationSystemTestCase
  setup do
    @gym_class_final = gym_class_finals(:one)
  end

  test "visiting the index" do
    visit gym_class_finals_url
    assert_selector "h1", text: "Gym Class Finals"
  end

  test "creating a Gym class final" do
    visit gym_class_finals_url
    click_on "New Gym Class Final"

    fill_in "Date", with: @gym_class_final.Date
    fill_in "Ptname", with: @gym_class_final.PTName
    fill_in "Time", with: @gym_class_final.Time
    fill_in "Type", with: @gym_class_final.Type
    fill_in "Personal trainer", with: @gym_class_final.personal_trainer_id
    click_on "Create Gym class final"

    assert_text "Gym class final was successfully created"
    click_on "Back"
  end

  test "updating a Gym class final" do
    visit gym_class_finals_url
    click_on "Edit", match: :first

    fill_in "Date", with: @gym_class_final.Date
    fill_in "Ptname", with: @gym_class_final.PTName
    fill_in "Time", with: @gym_class_final.Time
    fill_in "Type", with: @gym_class_final.Type
    fill_in "Personal trainer", with: @gym_class_final.personal_trainer_id
    click_on "Update Gym class final"

    assert_text "Gym class final was successfully updated"
    click_on "Back"
  end

  test "destroying a Gym class final" do
    visit gym_class_finals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gym class final was successfully destroyed"
  end
end
