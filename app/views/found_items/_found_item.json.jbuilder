json.extract! found_item, :id, :name, :description, :pic_url, :created_at, :updated_at
json.url found_item_url(found_item, format: :json)
