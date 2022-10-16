require 'test_helper'

class HpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hp = hps(:one)
  end

  test "should get index" do
    get hps_url, as: :json
    assert_response :success
  end

  test "should create hp" do
    assert_difference('Hp.count') do
      post hps_url, params: { hp: { colour: @hp.colour, name: @hp.name } }, as: :json
    end

    assert_response 201
  end

  test "should show hp" do
    get hp_url(@hp), as: :json
    assert_response :success
  end

  test "should update hp" do
    patch hp_url(@hp), params: { hp: { colour: @hp.colour, name: @hp.name } }, as: :json
    assert_response 200
  end

  test "should destroy hp" do
    assert_difference('Hp.count', -1) do
      delete hp_url(@hp), as: :json
    end

    assert_response 204
  end
end
