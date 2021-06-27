json.extract! appointment, :id, :user_first_name, :user_last_name, :user_email, :user_phone_no, :doc_email, :booking_time, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
