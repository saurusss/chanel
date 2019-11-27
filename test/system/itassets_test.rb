require "application_system_test_case"

class ItassetsTest < ApplicationSystemTestCase
  setup do
    @itasset = itassets(:one)
  end

  test "visiting the index" do
    visit itassets_url
    assert_selector "h1", text: "Itassets"
  end

  test "creating a Itasset" do
    visit itassets_url
    click_on "New Itasset"

    fill_in "Amtpurchase", with: @itasset.amtpurchase
    fill_in "Cpuspeed", with: @itasset.cpuspeed
    fill_in "Date produce", with: @itasset.date_produce
    fill_in "Date purchase", with: @itasset.date_purchase
    fill_in "Devicetype", with: @itasset.devicetype
    fill_in "Disksize", with: @itasset.disksize
    fill_in "Gwaddr", with: @itasset.gwaddr
    fill_in "Hostname", with: @itasset.hostname
    fill_in "Ipaddr", with: @itasset.ipaddr
    fill_in "Macwire", with: @itasset.macwire
    fill_in "Macwireless", with: @itasset.macwireless
    fill_in "Manufacture", with: @itasset.manufacture
    fill_in "Mgmtno", with: @itasset.mgmtno
    fill_in "Modelno", with: @itasset.modelno
    fill_in "Os", with: @itasset.os
    fill_in "Placetouse", with: @itasset.placetouse
    fill_in "Purpose", with: @itasset.purpose
    fill_in "Ramsize", with: @itasset.ramsize
    fill_in "Remarks", with: @itasset.remarks
    fill_in "Serialno", with: @itasset.serialno
    fill_in "Store", with: @itasset.store_id
    fill_in "Username", with: @itasset.username
    click_on "Create Itasset"

    assert_text "Itasset was successfully created"
    click_on "Back"
  end

  test "updating a Itasset" do
    visit itassets_url
    click_on "Edit", match: :first

    fill_in "Amtpurchase", with: @itasset.amtpurchase
    fill_in "Cpuspeed", with: @itasset.cpuspeed
    fill_in "Date produce", with: @itasset.date_produce
    fill_in "Date purchase", with: @itasset.date_purchase
    fill_in "Devicetype", with: @itasset.devicetype
    fill_in "Disksize", with: @itasset.disksize
    fill_in "Gwaddr", with: @itasset.gwaddr
    fill_in "Hostname", with: @itasset.hostname
    fill_in "Ipaddr", with: @itasset.ipaddr
    fill_in "Macwire", with: @itasset.macwire
    fill_in "Macwireless", with: @itasset.macwireless
    fill_in "Manufacture", with: @itasset.manufacture
    fill_in "Mgmtno", with: @itasset.mgmtno
    fill_in "Modelno", with: @itasset.modelno
    fill_in "Os", with: @itasset.os
    fill_in "Placetouse", with: @itasset.placetouse
    fill_in "Purpose", with: @itasset.purpose
    fill_in "Ramsize", with: @itasset.ramsize
    fill_in "Remarks", with: @itasset.remarks
    fill_in "Serialno", with: @itasset.serialno
    fill_in "Store", with: @itasset.store_id
    fill_in "Username", with: @itasset.username
    click_on "Update Itasset"

    assert_text "Itasset was successfully updated"
    click_on "Back"
  end

  test "destroying a Itasset" do
    visit itassets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itasset was successfully destroyed"
  end
end
