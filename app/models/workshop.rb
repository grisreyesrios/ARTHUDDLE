class Workshop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_category, :against => [:category]
  pg_search_scope :search_by_area, :against => [:area]
  acts_as_votable

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :area, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :price, numericality: { only_integer: true }

  has_many :bookings, dependent: :destroy
  has_many :notes, dependent: :destroy
  # has_many :reviews, through: :bookings, dependent: :destroy

  belongs_to :user, optional: true

   CATEGORIES = %w(audio
 ceramics
 design
 digital
 drawing
 environmental
 music
 online
 painting
 photography
 printmaking
 video
 performance
 social
 textiles
 theoretical
 reading
 tour
 writing
 sculpture
 woodwork
 other
  )
end
