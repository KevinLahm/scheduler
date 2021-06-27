class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_no, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true

  has_many :doctors
  has_many :appointments, through: :doctors
end
