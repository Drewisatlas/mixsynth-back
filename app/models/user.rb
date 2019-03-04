class User < ApplicationRecord
  has_many :synthesizers
  has_many :user_synthesizers
  has_many :synthesizers, through: :user_synthesizers

  has_secure_password

  validates :username, uniqueness: {
    case_sensitive: false
  }

  attr_accessor :password

  def authenticate (plaintext_password)
    if Bcrypt::Password.new(self.password) == plaintext_password
      self
    else
      false
    end
  end 
end
