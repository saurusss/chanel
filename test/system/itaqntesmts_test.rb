require "application_system_test_case"

class ItaqntesmtsTest < ApplicationSystemTestCase
  setup do
    @itaqntesmt = itaqntesmts(:one)
  end

  test "visiting the index" do
    visit itaqntesmts_url
    assert_selector "h1", text: "Itaqntesmts"
  end

  test "creating a Itaqntesmt" do
    visit itaqntesmts_url
    click_on "New Itaqntesmt"

    fill_in "Dtype", with: @itaqntesmt.dtype_id
    fill_in "Qntesmt", with: @itaqntesmt.qntesmt
    fill_in "Store", with: @itaqntesmt.store_id
    click_on "Create Itaqntesmt"

    assert_text "Itaqntesmt was successfully created"
    click_on "Back"
  end

  test "updating a Itaqntesmt" do
    visit itaqntesmts_url
    click_on "Edit", match: :first

    fill_in "Dtype", with: @itaqntesmt.dtype_id
    fill_in "Qntesmt", with: @itaqntesmt.qntesmt
    fill_in "Store", with: @itaqntesmt.store_id
    click_on "Update Itaqntesmt"

    assert_text "Itaqntesmt was successfully updated"
    click_on "Back"
  end

  test "destroying a Itaqntesmt" do
    visit itaqntesmts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itaqntesmt was successfully destroyed"
  end
end
