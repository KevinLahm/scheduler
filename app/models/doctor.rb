class Doctor < ApplicationRecord
	validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_no, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true

  has_many  :appointments
  has_many  :users, through: :appointments
end
