json.extract! telegram, :id, :name, :surname, :username, :phone, :user_id, :created_at, :updated_at
json.url telegram_url(telegram, format: :json)
