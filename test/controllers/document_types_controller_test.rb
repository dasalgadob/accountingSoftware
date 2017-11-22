require 'test_helper'

class DocumentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document_type = document_types(:one)
  end

  test "should get index" do
    get document_types_url
    assert_response :success
  end

  test "should get new" do
    get new_document_type_url
    assert_response :success
  end

  test "should create document_type" do
    assert_difference('DocumentType.count') do
      post document_types_url, params: { document_type: { abbreviation: @document_type.abbreviation, name: @document_type.name } }
    end

    assert_redirected_to document_type_url(DocumentType.last)
  end

  test "should show document_type" do
    get document_type_url(@document_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_type_url(@document_type)
    assert_response :success
  end

  test "should update document_type" do
    patch document_type_url(@document_type), params: { document_type: { abbreviation: @document_type.abbreviation, name: @document_type.name } }
    assert_redirected_to document_type_url(@document_type)
  end

  test "should destroy document_type" do
    assert_difference('DocumentType.count', -1) do
      delete document_type_url(@document_type)
    end

    assert_redirected_to document_types_url
  end
end
