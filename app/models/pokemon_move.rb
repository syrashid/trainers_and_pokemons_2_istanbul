class PokemonMove < ApplicationRecord
  belongs_to :pokemon
  belongs_to :move

  validates :pokemon, uniqueness: { scope: :move, message: "already added" }
end
