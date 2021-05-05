require 'test_helper'

class OkoaCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @okoa_call = okoa_calls(:one)
  end

  test "should get index" do
    get okoa_calls_url, as: :json
    assert_response :success
  end

  test "should create okoa_call" do
    assert_difference('OkoaCall.count') do
      post okoa_calls_url, params: { okoa_call: { call_id: @okoa_call.call_id, description: @okoa_call.description } }, as: :json
    end

    assert_response 201
  end

  test "should show okoa_call" do
    get okoa_call_url(@okoa_call), as: :json
    assert_response :success
  end

  test "should update okoa_call" do
    patch okoa_call_url(@okoa_call), params: { okoa_call: { call_id: @okoa_call.call_id, description: @okoa_call.description } }, as: :json
    assert_response 200
  end

  test "should destroy okoa_call" do
    assert_difference('OkoaCall.count', -1) do
      delete okoa_call_url(@okoa_call), as: :json
    end

    assert_response 204
  end
end
