require 'test_helper'

class BroadcastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @broadcast = broadcasts(:one)
  end

  test "should get index" do
    get broadcasts_url, as: :json
    assert_response :success
  end

  test "should create broadcast" do
    assert_difference('Broadcast.count') do
      post broadcasts_url, params: { broadcast: { from: @broadcast.from, with: @broadcast.with } }, as: :json
    end

    assert_response 201
  end

  test "should show broadcast" do
    get broadcast_url(@broadcast), as: :json
    assert_response :success
  end

  test "should update broadcast" do
    patch broadcast_url(@broadcast), params: { broadcast: { from: @broadcast.from, with: @broadcast.with } }, as: :json
    assert_response 200
  end

  test "should destroy broadcast" do
    assert_difference('Broadcast.count', -1) do
      delete broadcast_url(@broadcast), as: :json
    end

    assert_response 204
  end
end
