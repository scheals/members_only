class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true, length: { minimum: 8 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
