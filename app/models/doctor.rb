class Doctor < ApplicationRecord
	validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_no, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true

  belongs_to :user
end
