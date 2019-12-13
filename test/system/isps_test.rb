require "application_system_test_case"

class IspsTest < ApplicationSystemTestCase
  setup do
    @isp = isps(:one)
  end

  test "visiting the index" do
    visit isps_url
    assert_selector "h1", text: "Isps"
  end

  test "creating a Isp" do
    visit isps_url
    click_on "New Isp"

    fill_in "Bandwidth", with: @isp.bandwidth
    fill_in "Date open", with: @isp.date_open
    fill_in "Lineinfo", with: @isp.lineinfo
    fill_in "Placetoinstall", with: @isp.placetoinstall
    fill_in "Purpose", with: @isp.purpose
    fill_in "Remarks", with: @isp.remarks
    fill_in "Store", with: @isp.store_id
    fill_in "Telcom", with: @isp.telcom
    fill_in "Term", with: @isp.term
    click_on "Create Isp"

    assert_text "Isp was successfully created"
    click_on "Back"
  end

  test "updating a Isp" do
    visit isps_url
    click_on "Edit", match: :first

    fill_in "Bandwidth", with: @isp.bandwidth
    fill_in "Date open", with: @isp.date_open
    fill_in "Lineinfo", with: @isp.lineinfo
    fill_in "Placetoinstall", with: @isp.placetoinstall
    fill_in "Purpose", with: @isp.purpose
    fill_in "Remarks", with: @isp.remarks
    fill_in "Store", with: @isp.store_id
    fill_in "Telcom", with: @isp.telcom
    fill_in "Term", with: @isp.term
    click_on "Update Isp"

    assert_text "Isp was successfully updated"
    click_on "Back"
  end

  test "destroying a Isp" do
    visit isps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Isp was successfully destroyed"
  end
end
