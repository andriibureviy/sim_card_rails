json.extract! card_number, :id, :number, :created_at, :expire_at, :created_by_telegram_id, :email, :platform_ids, :user_id, :created_at, :updated_at
json.url card_number_url(card_number, format: :json)
