require 'test_helper'

class GruposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo = grupos(:one)
    @clase = clases(:one)
  end

  test "should get index" do
    get clase_grupos_url(@clase)
    assert_response :success
  end

  test "should get new" do
    get new_clase_grupo_url(@clase)
    assert_response :success
  end

  test "should create grupo" do
    assert_difference('Grupo.count') do
      post clase_grupos_url(@clase), params: { grupo: {  name: @grupo.name, number: @grupo.number }  }
    end

    assert_redirected_to clase_url(@clase)
  end

  test "should show grupo" do
    get grupo_url(@grupo)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_url(@grupo)
    assert_response :success
  end

  test "should update grupo" do
    patch grupo_url(@grupo), params: { grupo: { clase_id: @grupo.clase_id, name: @grupo.name, number: @grupo.number } }
    assert_redirected_to grupo_url(@grupo)
  end

  test "should destroy grupo" do
    @clase= @grupo.clase
    assert_difference('Grupo.count', -1) do
      delete grupo_url(@grupo)
    end

    assert_redirected_to clase_grupos_url(@clase)
  end
end
