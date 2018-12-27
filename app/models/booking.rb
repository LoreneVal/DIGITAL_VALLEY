class Booking < ApplicationRecord
  belongs_to :workplace
  belongs_to :owner
  belongs_to :freeuser
  belongs_to :premiumuser
  validates :owner_id, presence: true
  validates :workplace_id
  validates :freeuser_id, presence: { if: -> { premiumuser_id.blank? } }
  validates :premiumuser_id, presence: { if: -> { freeuser_id.blank? } }
end
end
