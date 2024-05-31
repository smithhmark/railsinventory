json.extract! item_owner, :id, :owner_name, :email, :created_at, :updated_at
json.url item_owner_url(item_owner, format: :json)
