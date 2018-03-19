class Genre < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :user_genres
  has_many :users, through: :user_genres
end
