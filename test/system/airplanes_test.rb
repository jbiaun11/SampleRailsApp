require "application_system_test_case"

class AirplanesTest < ApplicationSystemTestCase
  setup do
    @airplane = airplanes(:one)
  end

  test "visiting the index" do
    visit airplanes_url
    assert_selector "h1", text: "Airplanes"
  end

  test "should create airplane" do
    visit airplanes_url
    click_on "New airplane"

    fill_in "Iata code", with: @airplane.iata_code
    fill_in "Icao code", with: @airplane.icao_code
    fill_in "Name", with: @airplane.name
    click_on "Create Airplane"

    assert_text "Airplane was successfully created"
    click_on "Back"
  end

  test "should update Airplane" do
    visit airplane_url(@airplane)
    click_on "Edit this airplane", match: :first

    fill_in "Iata code", with: @airplane.iata_code
    fill_in "Icao code", with: @airplane.icao_code
    fill_in "Name", with: @airplane.name
    click_on "Update Airplane"

    assert_text "Airplane was successfully updated"
    click_on "Back"
  end

  test "should destroy Airplane" do
    visit airplane_url(@airplane)
    click_on "Destroy this airplane", match: :first

    assert_text "Airplane was successfully destroyed"
  end
end
