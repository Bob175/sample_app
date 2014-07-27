class User < ActiveRecord::Base
  validates :name, length: { maximum: 50 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { :case_sensitive => false }
  before_save { self.email = email.downcase }
  has_secure_password length: { greater_than: 5 }
end
