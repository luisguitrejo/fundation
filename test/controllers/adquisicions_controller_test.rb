require 'test_helper'

class AdquisicionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adquisicion = adquisicions(:one)
  end

  test "should get index" do
    get adquisicions_url
    assert_response :success
  end

  test "should get new" do
    get new_adquisicion_url
    assert_response :success
  end

  test "should create adquisicion" do
    assert_difference('Adquisicion.count') do
      post adquisicions_url, params: { adquisicion: { cliente: @adquisicion.cliente, fecha_compra: @adquisicion.fecha_compra, monto: @adquisicion.monto } }
    end

    assert_redirected_to adquisicion_url(Adquisicion.last)
  end

  test "should show adquisicion" do
    get adquisicion_url(@adquisicion)
    assert_response :success
  end

  test "should get edit" do
    get edit_adquisicion_url(@adquisicion)
    assert_response :success
  end

  test "should update adquisicion" do
    patch adquisicion_url(@adquisicion), params: { adquisicion: { cliente: @adquisicion.cliente, fecha_compra: @adquisicion.fecha_compra, monto: @adquisicion.monto } }
    assert_redirected_to adquisicion_url(@adquisicion)
  end

  test "should destroy adquisicion" do
    assert_difference('Adquisicion.count', -1) do
      delete adquisicion_url(@adquisicion)
    end

    assert_redirected_to adquisicions_url
  end
end
