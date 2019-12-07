require 'test_helper'

class ItaqntesmtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itaqntesmt = itaqntesmts(:one)
  end

  test "should get index" do
    get itaqntesmts_url
    assert_response :success
  end

  test "should get new" do
    get new_itaqntesmt_url
    assert_response :success
  end

  test "should create itaqntesmt" do
    assert_difference('Itaqntesmt.count') do
      post itaqntesmts_url, params: { itaqntesmt: { dtype_id: @itaqntesmt.dtype_id, qntesmt: @itaqntesmt.qntesmt, store_id: @itaqntesmt.store_id } }
    end

    assert_redirected_to itaqntesmt_url(Itaqntesmt.last)
  end

  test "should show itaqntesmt" do
    get itaqntesmt_url(@itaqntesmt)
    assert_response :success
  end

  test "should get edit" do
    get edit_itaqntesmt_url(@itaqntesmt)
    assert_response :success
  end

  test "should update itaqntesmt" do
    patch itaqntesmt_url(@itaqntesmt), params: { itaqntesmt: { dtype_id: @itaqntesmt.dtype_id, qntesmt: @itaqntesmt.qntesmt, store_id: @itaqntesmt.store_id } }
    assert_redirected_to itaqntesmt_url(@itaqntesmt)
  end

  test "should destroy itaqntesmt" do
    assert_difference('Itaqntesmt.count', -1) do
      delete itaqntesmt_url(@itaqntesmt)
    end

    assert_redirected_to itaqntesmts_url
  end
end
