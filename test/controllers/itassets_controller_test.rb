require 'test_helper'

class ItassetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itasset = itassets(:one)
  end

  test "should get index" do
    get itassets_url
    assert_response :success
  end

  test "should get new" do
    get new_itasset_url
    assert_response :success
  end

  test "should create itasset" do
    assert_difference('Itasset.count') do
      post itassets_url, params: { itasset: { amtpurchase: @itasset.amtpurchase, cpuspeed: @itasset.cpuspeed, date_produce: @itasset.date_produce, date_purchase: @itasset.date_purchase, devicetype: @itasset.devicetype, disksize: @itasset.disksize, gwaddr: @itasset.gwaddr, hostname: @itasset.hostname, ipaddr: @itasset.ipaddr, macwire: @itasset.macwire, macwireless: @itasset.macwireless, manufacture: @itasset.manufacture, mgmtno: @itasset.mgmtno, modelno: @itasset.modelno, os: @itasset.os, placetouse: @itasset.placetouse, purpose: @itasset.purpose, ramsize: @itasset.ramsize, remarks: @itasset.remarks, serialno: @itasset.serialno, store_id: @itasset.store_id, username: @itasset.username } }
    end

    assert_redirected_to itasset_url(Itasset.last)
  end

  test "should show itasset" do
    get itasset_url(@itasset)
    assert_response :success
  end

  test "should get edit" do
    get edit_itasset_url(@itasset)
    assert_response :success
  end

  test "should update itasset" do
    patch itasset_url(@itasset), params: { itasset: { amtpurchase: @itasset.amtpurchase, cpuspeed: @itasset.cpuspeed, date_produce: @itasset.date_produce, date_purchase: @itasset.date_purchase, devicetype: @itasset.devicetype, disksize: @itasset.disksize, gwaddr: @itasset.gwaddr, hostname: @itasset.hostname, ipaddr: @itasset.ipaddr, macwire: @itasset.macwire, macwireless: @itasset.macwireless, manufacture: @itasset.manufacture, mgmtno: @itasset.mgmtno, modelno: @itasset.modelno, os: @itasset.os, placetouse: @itasset.placetouse, purpose: @itasset.purpose, ramsize: @itasset.ramsize, remarks: @itasset.remarks, serialno: @itasset.serialno, store_id: @itasset.store_id, username: @itasset.username } }
    assert_redirected_to itasset_url(@itasset)
  end

  test "should destroy itasset" do
    assert_difference('Itasset.count', -1) do
      delete itasset_url(@itasset)
    end

    assert_redirected_to itassets_url
  end
end
