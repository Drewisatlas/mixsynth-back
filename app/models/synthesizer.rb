class Synthesizer < ApplicationRecord
  belongs_to :user
  has_many :user_synthesizers
  has_many :users, through: :user_synthesizers
end
