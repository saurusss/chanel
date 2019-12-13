require 'test_helper'

class IspsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @isp = isps(:one)
  end

  test "should get index" do
    get isps_url
    assert_response :success
  end

  test "should get new" do
    get new_isp_url
    assert_response :success
  end

  test "should create isp" do
    assert_difference('Isp.count') do
      post isps_url, params: { isp: { bandwidth: @isp.bandwidth, date_open: @isp.date_open, lineinfo: @isp.lineinfo, placetoinstall: @isp.placetoinstall, purpose: @isp.purpose, remarks: @isp.remarks, store_id: @isp.store_id, telcom: @isp.telcom, term: @isp.term } }
    end

    assert_redirected_to isp_url(Isp.last)
  end

  test "should show isp" do
    get isp_url(@isp)
    assert_response :success
  end

  test "should get edit" do
    get edit_isp_url(@isp)
    assert_response :success
  end

  test "should update isp" do
    patch isp_url(@isp), params: { isp: { bandwidth: @isp.bandwidth, date_open: @isp.date_open, lineinfo: @isp.lineinfo, placetoinstall: @isp.placetoinstall, purpose: @isp.purpose, remarks: @isp.remarks, store_id: @isp.store_id, telcom: @isp.telcom, term: @isp.term } }
    assert_redirected_to isp_url(@isp)
  end

  test "should destroy isp" do
    assert_difference('Isp.count', -1) do
      delete isp_url(@isp)
    end

    assert_redirected_to isps_url
  end
end
