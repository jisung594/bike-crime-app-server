class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :full_name, presence: true
  validates :location, presence: true

  # has_many :reports
  # has_many :incidents, through: :reports
  has_many :incidents
end
