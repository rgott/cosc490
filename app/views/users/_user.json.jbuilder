json.extract! user, :id, :first_name, :last_name, :username, :email, :confirm_email, :group_id, :role_id, :created_at, :updated_at
json.url user_url(user, format: :json)
