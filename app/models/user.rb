class User < ApplicationRecord
  has_many :synthesizers
  has_many :user_synthesizers
  has_many :synthesizers, through: :user_synthesizers
end
