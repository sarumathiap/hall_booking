json.extract! reminder, :id, :name, :message, :email, :dob, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
