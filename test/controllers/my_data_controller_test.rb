require 'test_helper'

class MyDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_datum = my_data(:one)
  end

  test "should get index" do
    get my_data_url, as: :json
    assert_response :success
  end

  test "should create my_datum" do
    assert_difference('MyDatum.count') do
      post my_data_url, params: { my_datum: { data_id: @my_datum.data_id, description: @my_datum.description } }, as: :json
    end

    assert_response 201
  end

  test "should show my_datum" do
    get my_datum_url(@my_datum), as: :json
    assert_response :success
  end

  test "should update my_datum" do
    patch my_datum_url(@my_datum), params: { my_datum: { data_id: @my_datum.data_id, description: @my_datum.description } }, as: :json
    assert_response 200
  end

  test "should destroy my_datum" do
    assert_difference('MyDatum.count', -1) do
      delete my_datum_url(@my_datum), as: :json
    end

    assert_response 204
  end
end
