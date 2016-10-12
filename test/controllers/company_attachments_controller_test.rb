require 'test_helper'

class CompanyAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_attachment = company_attachments(:one)
  end

  test "should get index" do
    get company_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_company_attachment_url
    assert_response :success
  end

  test "should create company_attachment" do
    assert_difference('CompanyAttachment.count') do
      post company_attachments_url, params: { company_attachment: { company_id: @company_attachment.company_id, image: @company_attachment.image } }
    end

    assert_redirected_to company_attachment_url(CompanyAttachment.last)
  end

  test "should show company_attachment" do
    get company_attachment_url(@company_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_attachment_url(@company_attachment)
    assert_response :success
  end

  test "should update company_attachment" do
    patch company_attachment_url(@company_attachment), params: { company_attachment: { company_id: @company_attachment.company_id, image: @company_attachment.image } }
    assert_redirected_to company_attachment_url(@company_attachment)
  end

  test "should destroy company_attachment" do
    assert_difference('CompanyAttachment.count', -1) do
      delete company_attachment_url(@company_attachment)
    end

    assert_redirected_to company_attachments_url
  end
end
