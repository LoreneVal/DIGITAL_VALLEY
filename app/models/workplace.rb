class Workplace < ApplicationRecord
  belongs_to :owner
  belongs_to :admin
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :area, presence: true
  validates :category, presence: true
  #mount_uploader :picture, PhotoUploader
  #geocoded_by :location
  #after_validation :geocode, if: :will_save_change_to_location?
end
