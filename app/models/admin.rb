class Admin< User
  has_many :workplaces
  def admin?
    true
  end
end
