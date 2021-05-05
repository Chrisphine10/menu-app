require 'test_helper'

class MyMpesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_mpesa = my_mpesas(:one)
  end

  test "should get index" do
    get my_mpesas_url, as: :json
    assert_response :success
  end

  test "should create my_mpesa" do
    assert_difference('MyMpesa.count') do
      post my_mpesas_url, params: { my_mpesa: { description: @my_mpesa.description, mpesa_id: @my_mpesa.mpesa_id } }, as: :json
    end

    assert_response 201
  end

  test "should show my_mpesa" do
    get my_mpesa_url(@my_mpesa), as: :json
    assert_response :success
  end

  test "should update my_mpesa" do
    patch my_mpesa_url(@my_mpesa), params: { my_mpesa: { description: @my_mpesa.description, mpesa_id: @my_mpesa.mpesa_id } }, as: :json
    assert_response 200
  end

  test "should destroy my_mpesa" do
    assert_difference('MyMpesa.count', -1) do
      delete my_mpesa_url(@my_mpesa), as: :json
    end

    assert_response 204
  end
end
