class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def freeUser?
    false
  end
  def premiumUser?
    false
  end
  def owner?
    false
  end
  def admin?
    false
  end
end
