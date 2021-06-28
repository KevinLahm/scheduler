class Appointment < ApplicationRecord
  validates :booking_time, presence: true

  belongs_to :user
  belongs_to :doctor
end
