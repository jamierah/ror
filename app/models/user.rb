class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :image
  has_secure_password
  has_many :microposts
  
  before_save { email.downcase! }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z\d\-]\.{1}[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
end
