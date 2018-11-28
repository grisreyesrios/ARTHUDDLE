class Booking < ApplicationRecord
  belongs_to :workshop
  belongs_to :user
  has_many :reviews

  validates :date, presence: true
  validates :user_id, presence: true
end
