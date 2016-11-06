require 'test_helper'

class AkciyasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @akciya = akciyas(:one)
  end

  test "should get index" do
    get akciyas_url
    assert_response :success
  end

  test "should get new" do
    get new_akciya_url
    assert_response :success
  end

  test "should create akciya" do
    assert_difference('Akciya.count') do
      post akciyas_url, params: { akciya: { company_id: @akciya.company_id, desc: @akciya.desc, image: @akciya.image, text: @akciya.text, title: @akciya.title } }
    end

    assert_redirected_to akciya_url(Akciya.last)
  end

  test "should show akciya" do
    get akciya_url(@akciya)
    assert_response :success
  end

  test "should get edit" do
    get edit_akciya_url(@akciya)
    assert_response :success
  end

  test "should update akciya" do
    patch akciya_url(@akciya), params: { akciya: { company_id: @akciya.company_id, desc: @akciya.desc, image: @akciya.image, text: @akciya.text, title: @akciya.title } }
    assert_redirected_to akciya_url(@akciya)
  end

  test "should destroy akciya" do
    assert_difference('Akciya.count', -1) do
      delete akciya_url(@akciya)
    end

    assert_redirected_to akciyas_url
  end
end
