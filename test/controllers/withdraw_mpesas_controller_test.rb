require 'test_helper'

class WithdrawMpesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @withdraw_mpesa = withdraw_mpesas(:one)
  end

  test "should get index" do
    get withdraw_mpesas_url, as: :json
    assert_response :success
  end

  test "should create withdraw_mpesa" do
    assert_difference('WithdrawMpesa.count') do
      post withdraw_mpesas_url, params: { withdraw_mpesa: { description: @withdraw_mpesa.description, mpesa_id: @withdraw_mpesa.mpesa_id } }, as: :json
    end

    assert_response 201
  end

  test "should show withdraw_mpesa" do
    get withdraw_mpesa_url(@withdraw_mpesa), as: :json
    assert_response :success
  end

  test "should update withdraw_mpesa" do
    patch withdraw_mpesa_url(@withdraw_mpesa), params: { withdraw_mpesa: { description: @withdraw_mpesa.description, mpesa_id: @withdraw_mpesa.mpesa_id } }, as: :json
    assert_response 200
  end

  test "should destroy withdraw_mpesa" do
    assert_difference('WithdrawMpesa.count', -1) do
      delete withdraw_mpesa_url(@withdraw_mpesa), as: :json
    end

    assert_response 204
  end
end
