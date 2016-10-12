json.extract! company_attachment, :id, :company_id, :image, :created_at, :updated_at
json.url company_attachment_url(company_attachment, format: :json)