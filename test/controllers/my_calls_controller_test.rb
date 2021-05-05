require 'test_helper'

class MyCallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_call = my_calls(:one)
  end

  test "should get index" do
    get my_calls_url, as: :json
    assert_response :success
  end

  test "should create my_call" do
    assert_difference('MyCall.count') do
      post my_calls_url, params: { my_call: { call_id: @my_call.call_id, description: @my_call.description } }, as: :json
    end

    assert_response 201
  end

  test "should show my_call" do
    get my_call_url(@my_call), as: :json
    assert_response :success
  end

  test "should update my_call" do
    patch my_call_url(@my_call), params: { my_call: { call_id: @my_call.call_id, description: @my_call.description } }, as: :json
    assert_response 200
  end

  test "should destroy my_call" do
    assert_difference('MyCall.count', -1) do
      delete my_call_url(@my_call), as: :json
    end

    assert_response 204
  end
end
