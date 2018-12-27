class Owner < User
  has_many :workplaces, dependent: :destroy
  has_many :bookings, dependent: :destroy
  def owner?
    true
  end
end
