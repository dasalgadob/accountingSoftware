require 'test_helper'

class CuentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuentum = cuenta(:one)
  end

  test "should get index" do
    get cuenta_url
    assert_response :success
  end

  test "should get new" do
    get new_cuentum_url
    assert_response :success
  end

  test "should create cuentum" do
    assert_difference('Cuentum.count') do
      post cuenta_url, params: { cuentum: { name: @cuentum.name, number: @cuentum.number, references: @cuentum.references } }
    end

    assert_redirected_to cuentum_url(Cuentum.last)
  end

  test "should show cuentum" do
    get cuentum_url(@cuentum)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuentum_url(@cuentum)
    assert_response :success
  end

  test "should update cuentum" do
    patch cuentum_url(@cuentum), params: { cuentum: { name: @cuentum.name, number: @cuentum.number, references: @cuentum.references } }
    assert_redirected_to cuentum_url(@cuentum)
  end

  test "should destroy cuentum" do
    assert_difference('Cuentum.count', -1) do
      delete cuentum_url(@cuentum)
    end

    assert_redirected_to cuenta_url
  end
end
