class Booking < ApplicationRecord
  belongs_to :workshop
  belongs_to :user
  has_many :reviews

  validates :number, presence: true
  validates :user_id, presence: true
end
