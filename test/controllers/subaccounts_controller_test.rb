require 'test_helper'

class SubaccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subaccount = subaccounts(:one)
  end

  test "should get index" do
    get subaccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_subaccount_url
    assert_response :success
  end

  test "should create subaccount" do
    assert_difference('Subaccount.count') do
      post subaccounts_url, params: { subaccount: { account_id: @subaccount.account_id, name: @subaccount.name, number: @subaccount.number } }
    end

    assert_redirected_to subaccount_url(Subaccount.last)
  end

  test "should show subaccount" do
    get subaccount_url(@subaccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_subaccount_url(@subaccount)
    assert_response :success
  end

  test "should update subaccount" do
    patch subaccount_url(@subaccount), params: { subaccount: { account_id: @subaccount.account_id, name: @subaccount.name, number: @subaccount.number } }
    assert_redirected_to subaccount_url(@subaccount)
  end

  test "should destroy subaccount" do
    assert_difference('Subaccount.count', -1) do
      delete subaccount_url(@subaccount)
    end

    assert_redirected_to subaccounts_url
  end
end
