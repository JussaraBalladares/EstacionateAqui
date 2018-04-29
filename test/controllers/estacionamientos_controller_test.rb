require 'test_helper'

class EstacionamientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacionamiento = estacionamientos(:one)
  end

  test "should get index" do
    get estacionamientos_url
    assert_response :success
  end

  test "should get new" do
    get new_estacionamiento_url
    assert_response :success
  end

  test "should create estacionamiento" do
    assert_difference('Estacionamiento.count') do
      post estacionamientos_url, params: { estacionamiento: { Dimensiones: @estacionamiento.Dimensiones, Direccion: @estacionamiento.Direccion, DireccionMaps: @estacionamiento.DireccionMaps, Nombre: @estacionamiento.Nombre, PrecioPorHora: @estacionamiento.PrecioPorHora, Telefono: @estacionamiento.Telefono, Tipo: @estacionamiento.Tipo, Ubicacion: @estacionamiento.Ubicacion } }
    end

    assert_redirected_to estacionamiento_url(Estacionamiento.last)
  end

  test "should show estacionamiento" do
    get estacionamiento_url(@estacionamiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_estacionamiento_url(@estacionamiento)
    assert_response :success
  end

  test "should update estacionamiento" do
    patch estacionamiento_url(@estacionamiento), params: { estacionamiento: { Dimensiones: @estacionamiento.Dimensiones, Direccion: @estacionamiento.Direccion, DireccionMaps: @estacionamiento.DireccionMaps, Nombre: @estacionamiento.Nombre, PrecioPorHora: @estacionamiento.PrecioPorHora, Telefono: @estacionamiento.Telefono, Tipo: @estacionamiento.Tipo, Ubicacion: @estacionamiento.Ubicacion } }
    assert_redirected_to estacionamiento_url(@estacionamiento)
  end

  test "should destroy estacionamiento" do
    assert_difference('Estacionamiento.count', -1) do
      delete estacionamiento_url(@estacionamiento)
    end

    assert_redirected_to estacionamientos_url
  end
end
