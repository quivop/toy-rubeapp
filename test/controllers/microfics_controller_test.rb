require 'test_helper'

class MicroficsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microfic = microfics(:one)
  end

  test "should get index" do
    get microfics_url
    assert_response :success
  end

  test "should get new" do
    get new_microfic_url
    assert_response :success
  end

  test "should create microfic" do
    assert_difference('Microfic.count') do
      post microfics_url, params: { microfic: { content: @microfic.content, user_id: @microfic.user_id } }
    end

    assert_redirected_to microfic_url(Microfic.last)
  end

  test "should show microfic" do
    get microfic_url(@microfic)
    assert_response :success
  end

  test "should get edit" do
    get edit_microfic_url(@microfic)
    assert_response :success
  end

  test "should update microfic" do
    patch microfic_url(@microfic), params: { microfic: { content: @microfic.content, user_id: @microfic.user_id } }
    assert_redirected_to microfic_url(@microfic)
  end

  test "should destroy microfic" do
    assert_difference('Microfic.count', -1) do
      delete microfic_url(@microfic)
    end

    assert_redirected_to microfics_url
  end
end
