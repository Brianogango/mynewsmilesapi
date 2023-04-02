json.extract! user, :id, :first_name, :last_name, :phone, :email, :password_digest, :level, :image, :created_at, :updated_at
json.url user_url(user, format: :json)
