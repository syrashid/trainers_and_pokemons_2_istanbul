class PokemonMovesController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @pokemon_move = PokemonMove.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @moves = Move.where(id: params["pokemon_move"]["move"])
    @moves.each do |move|
      PokemonMove.create(move: move, pokemon: @pokemon)
    end

    redirect_to trainer_path(@pokemon.trainer)

  end
end
