class Booking < ApplicationRecord
  belongs_to :workshop
  belongs_to :user

  validates :date, presence: true
  validates :user_id, presence: true
end
