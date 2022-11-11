class User < ApplicationRecord
  has_many :posts
  validates :name, uniqueness: true, presence: true, length: { minimum: 3 }
  validates :email, uniqueness: true, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
