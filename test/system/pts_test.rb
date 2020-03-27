require "application_system_test_case"

class PtsTest < ApplicationSystemTestCase
  setup do
    @pt = pts(:one)
  end

  test "visiting the index" do
    visit pts_url
    assert_selector "h1", text: "Pts"
  end

  test "creating a Pt" do
    visit pts_url
    click_on "New Pt"

    fill_in "Amountofclients", with: @pt.amountOfClients
    fill_in "Description", with: @pt.description
    fill_in "Firstname", with: @pt.firstName
    fill_in "Id", with: @pt.id
    fill_in "Secondname", with: @pt.secondName
    click_on "Create Pt"

    assert_text "Pt was successfully created"
    click_on "Back"
  end

  test "updating a Pt" do
    visit pts_url
    click_on "Edit", match: :first

    fill_in "Amountofclients", with: @pt.amountOfClients
    fill_in "Description", with: @pt.description
    fill_in "Firstname", with: @pt.firstName
    fill_in "Id", with: @pt.id
    fill_in "Secondname", with: @pt.secondName
    click_on "Update Pt"

    assert_text "Pt was successfully updated"
    click_on "Back"
  end

  test "destroying a Pt" do
    visit pts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pt was successfully destroyed"
  end
end
