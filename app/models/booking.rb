class Booking < ApplicationRecord
  belongs_to :workshop
  belongs_to :user
end
