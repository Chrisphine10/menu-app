require 'test_helper'

class FulizaMpesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuliza_mpesa = fuliza_mpesas(:one)
  end

  test "should get index" do
    get fuliza_mpesas_url, as: :json
    assert_response :success
  end

  test "should create fuliza_mpesa" do
    assert_difference('FulizaMpesa.count') do
      post fuliza_mpesas_url, params: { fuliza_mpesa: { description: @fuliza_mpesa.description, mpesa_id: @fuliza_mpesa.mpesa_id } }, as: :json
    end

    assert_response 201
  end

  test "should show fuliza_mpesa" do
    get fuliza_mpesa_url(@fuliza_mpesa), as: :json
    assert_response :success
  end

  test "should update fuliza_mpesa" do
    patch fuliza_mpesa_url(@fuliza_mpesa), params: { fuliza_mpesa: { description: @fuliza_mpesa.description, mpesa_id: @fuliza_mpesa.mpesa_id } }, as: :json
    assert_response 200
  end

  test "should destroy fuliza_mpesa" do
    assert_difference('FulizaMpesa.count', -1) do
      delete fuliza_mpesa_url(@fuliza_mpesa), as: :json
    end

    assert_response 204
  end
end
