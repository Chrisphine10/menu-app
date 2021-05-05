require 'test_helper'

class MpesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mpesa = mpesas(:one)
  end

  test "should get index" do
    get mpesas_url, as: :json
    assert_response :success
  end

  test "should create mpesa" do
    assert_difference('Mpesa.count') do
      post mpesas_url, params: { mpesa: { decription: @mpesa.decription, menu_id: @mpesa.menu_id } }, as: :json
    end

    assert_response 201
  end

  test "should show mpesa" do
    get mpesa_url(@mpesa), as: :json
    assert_response :success
  end

  test "should update mpesa" do
    patch mpesa_url(@mpesa), params: { mpesa: { decription: @mpesa.decription, menu_id: @mpesa.menu_id } }, as: :json
    assert_response 200
  end

  test "should destroy mpesa" do
    assert_difference('Mpesa.count', -1) do
      delete mpesa_url(@mpesa), as: :json
    end

    assert_response 204
  end
end
