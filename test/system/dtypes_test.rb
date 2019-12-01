require "application_system_test_case"

class DtypesTest < ApplicationSystemTestCase
  setup do
    @dtype = dtypes(:one)
  end

  test "visiting the index" do
    visit dtypes_url
    assert_selector "h1", text: "Dtypes"
  end

  test "creating a Dtype" do
    visit dtypes_url
    click_on "New Dtype"

    fill_in "Dtype", with: @dtype.dtype
    click_on "Create Dtype"

    assert_text "Dtype was successfully created"
    click_on "Back"
  end

  test "updating a Dtype" do
    visit dtypes_url
    click_on "Edit", match: :first

    fill_in "Dtype", with: @dtype.dtype
    click_on "Update Dtype"

    assert_text "Dtype was successfully updated"
    click_on "Back"
  end

  test "destroying a Dtype" do
    visit dtypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dtype was successfully destroyed"
  end
end
