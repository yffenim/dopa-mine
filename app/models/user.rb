class User < ApplicationRecord 
  has_many :activities

  # destroy all commentss if user is destroyed
  # explain commented_on
  has_many :comments, as: :commentable, dependent: :destroy
 
  #rails method to set and authenticate bcrypt password, requires password_digest
  has_secure_password
  # reformat email
  before_save { self.email = email.downcase }
  # input validation for name, email, and password
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, confirmation: true, length: { :within => 8..72 }

end
