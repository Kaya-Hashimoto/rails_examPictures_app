class User < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_pictures, through: :favorites, source: :picture
  has_many :pictures
  validates :name, presence: true, length: {maximum: 30}, on: :create
  validates :email, presence: true, length: {maximum: 250},
                                    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
                                    on: :create
  before_validation {email.downcase!}
  has_secure_password
  validates :password, length: {minimum: 6}, on: :create
  mount_uploader :image, UserImageUploader
end
