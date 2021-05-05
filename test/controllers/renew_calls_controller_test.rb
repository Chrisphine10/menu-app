require 'test_helper'

class RenewCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renew_call = renew_calls(:one)
  end

  test "should get index" do
    get renew_calls_url, as: :json
    assert_response :success
  end

  test "should create renew_call" do
    assert_difference('RenewCall.count') do
      post renew_calls_url, params: { renew_call: { call_id: @renew_call.call_id, description: @renew_call.description } }, as: :json
    end

    assert_response 201
  end

  test "should show renew_call" do
    get renew_call_url(@renew_call), as: :json
    assert_response :success
  end

  test "should update renew_call" do
    patch renew_call_url(@renew_call), params: { renew_call: { call_id: @renew_call.call_id, description: @renew_call.description } }, as: :json
    assert_response 200
  end

  test "should destroy renew_call" do
    assert_difference('RenewCall.count', -1) do
      delete renew_call_url(@renew_call), as: :json
    end

    assert_response 204
  end
end
