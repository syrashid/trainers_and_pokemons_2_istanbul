class Pokemon < ApplicationRecord
  belongs_to :trainer

  validates :name, presence: true
  validates :image_url, presence: true

  has_many :pokemon_moves, dependent: :destroy
  has_many :moves, through: :pokemon_moves
end
