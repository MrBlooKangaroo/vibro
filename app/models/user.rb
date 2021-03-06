class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :username, presence: true

  mount_uploader :pro_pic, ProPicUploader

  has_many :vibes
  has_many :lineups
end
