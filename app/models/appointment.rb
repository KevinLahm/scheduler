class Appointment < ApplicationRecord
	validates :user_first_name, presence: true
  validates :user_last_name, presence: true
  validates :user_phone_no, presence: true
  validates :doc_email, presence: true
  validates :booking_time, presence: true

  has_many  :doctors
  has_many  :users, through: :doctors
end
