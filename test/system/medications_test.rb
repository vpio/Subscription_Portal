require "application_system_test_case"

class MedicationsTest < ApplicationSystemTestCase
  setup do
    @medication = medications(:one)
  end

  test "visiting the index" do
    visit medications_url
    assert_selector "h1", text: "Medications"
  end

  test "creating a Medication" do
    visit medications_url
    click_on "New Medication"

    fill_in "Duration Of Supply In Months", with: @medication.duration_of_supply_in_months
    fill_in "Name", with: @medication.name
    fill_in "Price", with: @medication.price
    click_on "Create Medication"

    assert_text "Medication was successfully created"
    click_on "Back"
  end

  test "updating a Medication" do
    visit medications_url
    click_on "Edit", match: :first

    fill_in "Duration Of Supply In Months", with: @medication.duration_of_supply_in_months
    fill_in "Name", with: @medication.name
    fill_in "Price", with: @medication.price
    click_on "Update Medication"

    assert_text "Medication was successfully updated"
    click_on "Back"
  end

  test "destroying a Medication" do
    visit medications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medication was successfully destroyed"
  end
end
