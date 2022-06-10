class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # "john lennon" -> "John Lennon"

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
