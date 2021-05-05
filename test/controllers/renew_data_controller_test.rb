require 'test_helper'

class RenewDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @renew_datum = renew_data(:one)
  end

  test "should get index" do
    get renew_data_url, as: :json
    assert_response :success
  end

  test "should create renew_datum" do
    assert_difference('RenewDatum.count') do
      post renew_data_url, params: { renew_datum: { data_id: @renew_datum.data_id, description: @renew_datum.description } }, as: :json
    end

    assert_response 201
  end

  test "should show renew_datum" do
    get renew_datum_url(@renew_datum), as: :json
    assert_response :success
  end

  test "should update renew_datum" do
    patch renew_datum_url(@renew_datum), params: { renew_datum: { data_id: @renew_datum.data_id, description: @renew_datum.description } }, as: :json
    assert_response 200
  end

  test "should destroy renew_datum" do
    assert_difference('RenewDatum.count', -1) do
      delete renew_datum_url(@renew_datum), as: :json
    end

    assert_response 204
  end
end
