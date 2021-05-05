require 'test_helper'

class OkoaDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @okoa_datum = okoa_data(:one)
  end

  test "should get index" do
    get okoa_data_url, as: :json
    assert_response :success
  end

  test "should create okoa_datum" do
    assert_difference('OkoaDatum.count') do
      post okoa_data_url, params: { okoa_datum: { data_id: @okoa_datum.data_id, description: @okoa_datum.description } }, as: :json
    end

    assert_response 201
  end

  test "should show okoa_datum" do
    get okoa_datum_url(@okoa_datum), as: :json
    assert_response :success
  end

  test "should update okoa_datum" do
    patch okoa_datum_url(@okoa_datum), params: { okoa_datum: { data_id: @okoa_datum.data_id, description: @okoa_datum.description } }, as: :json
    assert_response 200
  end

  test "should destroy okoa_datum" do
    assert_difference('OkoaDatum.count', -1) do
      delete okoa_datum_url(@okoa_datum), as: :json
    end

    assert_response 204
  end
end
