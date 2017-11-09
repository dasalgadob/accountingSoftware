require 'test_helper'

class AuxiliarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auxiliar = auxiliars(:one)
  end

  test "should get index" do
    get auxiliars_url
    assert_response :success
  end

  test "should get new" do
    get new_auxiliar_url
    assert_response :success
  end

  test "should create auxiliar" do
    assert_difference('Auxiliar.count') do
      post auxiliars_url, params: { auxiliar: { name: @auxiliar.name, number: @auxiliar.number, subaccount_id: @auxiliar.subaccount_id } }
    end

    assert_redirected_to auxiliar_url(Auxiliar.last)
  end

  test "should show auxiliar" do
    get auxiliar_url(@auxiliar)
    assert_response :success
  end

  test "should get edit" do
    get edit_auxiliar_url(@auxiliar)
    assert_response :success
  end

  test "should update auxiliar" do
    patch auxiliar_url(@auxiliar), params: { auxiliar: { name: @auxiliar.name, number: @auxiliar.number, subaccount_id: @auxiliar.subaccount_id } }
    assert_redirected_to auxiliar_url(@auxiliar)
  end

  test "should destroy auxiliar" do
    assert_difference('Auxiliar.count', -1) do
      delete auxiliar_url(@auxiliar)
    end

    assert_redirected_to auxiliars_url
  end
end
