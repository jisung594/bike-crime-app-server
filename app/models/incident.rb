class Incident < ApplicationRecord
  # has_many :reports
  # has_many :users, through: :reports
  belongs_to :user
end
