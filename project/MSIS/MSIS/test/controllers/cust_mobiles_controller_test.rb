require 'test_helper'

class CustMobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cust_mobile = cust_mobiles(:one)
  end

  test "should get index" do
    get cust_mobiles_url
    assert_response :success
  end

  test "should get new" do
    get new_cust_mobile_url
    assert_response :success
  end

  test "should create cust_mobile" do
    assert_difference('CustMobile.count') do
      post cust_mobiles_url, params: { cust_mobile: { buyer_id: @cust_mobile.buyer_id, invoice_id: @cust_mobile.invoice_id, mses_id: @cust_mobile.mses_id, seller_id: @cust_mobile.seller_id } }
    end

    assert_redirected_to cust_mobile_url(CustMobile.last)
  end

  test "should show cust_mobile" do
    get cust_mobile_url(@cust_mobile)
    assert_response :success
  end

  test "should get edit" do
    get edit_cust_mobile_url(@cust_mobile)
    assert_response :success
  end

  test "should update cust_mobile" do
    patch cust_mobile_url(@cust_mobile), params: { cust_mobile: { buyer_id: @cust_mobile.buyer_id, invoice_id: @cust_mobile.invoice_id, mses_id: @cust_mobile.mses_id, seller_id: @cust_mobile.seller_id } }
    assert_redirected_to cust_mobile_url(@cust_mobile)
  end

  test "should destroy cust_mobile" do
    assert_difference('CustMobile.count', -1) do
      delete cust_mobile_url(@cust_mobile)
    end

    assert_redirected_to cust_mobiles_url
  end
end
