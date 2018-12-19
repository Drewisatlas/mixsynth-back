class Synthesizer < ApplicationRecord
  has_many :user_synthesizers
  has_many :users, through: :user_synthesizers
end
