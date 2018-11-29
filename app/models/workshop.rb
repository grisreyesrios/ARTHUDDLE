class Workshop < ApplicationRecord

  include PgSearch
  acts_as_votable

  validates :name, presence: true, uniqueness: true
  validates :area, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }

  has_many :bookings, dependent: :destroy
  has_many :notes, dependent: :destroy
  # has_many :reviews, through: :bookings, dependent: :destroy

  belongs_to :user, optional: true

end
