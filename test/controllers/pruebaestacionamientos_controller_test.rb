require 'test_helper'

class PruebaestacionamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pruebaestacionamiento = pruebaestacionamientos(:one)
  end

  test "should get index" do
    get pruebaestacionamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_pruebaestacionamiento_url
    assert_response :success
  end

  test "should create pruebaestacionamiento" do
    assert_difference('Pruebaestacionamiento.count') do
      post pruebaestacionamientos_url, params: { pruebaestacionamiento: { descripcion: @pruebaestacionamiento.descripcion, direccion: @pruebaestacionamiento.direccion } }
    end

    assert_redirected_to pruebaestacionamiento_url(Pruebaestacionamiento.last)
  end

  test "should show pruebaestacionamiento" do
    get pruebaestacionamiento_url(@pruebaestacionamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_pruebaestacionamiento_url(@pruebaestacionamiento)
    assert_response :success
  end

  test "should update pruebaestacionamiento" do
    patch pruebaestacionamiento_url(@pruebaestacionamiento), params: { pruebaestacionamiento: { descripcion: @pruebaestacionamiento.descripcion, direccion: @pruebaestacionamiento.direccion } }
    assert_redirected_to pruebaestacionamiento_url(@pruebaestacionamiento)
  end

  test "should destroy pruebaestacionamiento" do
    assert_difference('Pruebaestacionamiento.count', -1) do
      delete pruebaestacionamiento_url(@pruebaestacionamiento)
    end

    assert_redirected_to pruebaestacionamientos_url
  end
end
