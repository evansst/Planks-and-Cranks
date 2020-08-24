class User < ApplicationRecord
  has_many :listings
  has_secure_password
  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true
  validates :email_address, presence: true, uniqueness: true
end
