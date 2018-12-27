class Premiumuser < User
  has_many :bookings, dependent: :destroy
  has_many :workplaces, through: :bookings
  def premiumuser?
    true
  end
end
