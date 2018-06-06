require 'test_helper'

class WithholdingTaxLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @withholding_tax_location = withholding_tax_locations(:one)
  end

  test "should get index" do
    get withholding_tax_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_withholding_tax_location_url
    assert_response :success
  end

  test "should create withholding_tax_location" do
    assert_difference('WithholdingTaxLocation.count') do
      post withholding_tax_locations_url, params: { withholding_tax_location: { city_id: @withholding_tax_location.city_id, person_id: @withholding_tax_location.person_id } }
    end

    assert_redirected_to withholding_tax_location_url(WithholdingTaxLocation.last)
  end

  test "should show withholding_tax_location" do
    get withholding_tax_location_url(@withholding_tax_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_withholding_tax_location_url(@withholding_tax_location)
    assert_response :success
  end

  test "should update withholding_tax_location" do
    patch withholding_tax_location_url(@withholding_tax_location), params: { withholding_tax_location: { city_id: @withholding_tax_location.city_id, person_id: @withholding_tax_location.person_id } }
    assert_redirected_to withholding_tax_location_url(@withholding_tax_location)
  end

  test "should destroy withholding_tax_location" do
    assert_difference('WithholdingTaxLocation.count', -1) do
      delete withholding_tax_location_url(@withholding_tax_location)
    end

    assert_redirected_to withholding_tax_locations_url
  end
end
