class Freeuser < User
  has_many :bookings, dependent: :destroy
  has_many :workplaces, through: :bookings
  def freeuser?
    true
  end
end
