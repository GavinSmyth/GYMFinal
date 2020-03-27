require "application_system_test_case"

class PtClientsTest < ApplicationSystemTestCase
  setup do
    @pt_client = pt_clients(:one)
  end

  test "visiting the index" do
    visit pt_clients_url
    assert_selector "h1", text: "Pt Clients"
  end

  test "creating a Pt client" do
    visit pt_clients_url
    click_on "New Pt Client"

    fill_in "Name", with: @pt_client.Name
    fill_in "Ptname", with: @pt_client.PTName
    fill_in "Personal trainer", with: @pt_client.personal_trainer_id
    click_on "Create Pt client"

    assert_text "Pt client was successfully created"
    click_on "Back"
  end

  test "updating a Pt client" do
    visit pt_clients_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pt_client.Name
    fill_in "Ptname", with: @pt_client.PTName
    fill_in "Personal trainer", with: @pt_client.personal_trainer_id
    click_on "Update Pt client"

    assert_text "Pt client was successfully updated"
    click_on "Back"
  end

  test "destroying a Pt client" do
    visit pt_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pt client was successfully destroyed"
  end
end
