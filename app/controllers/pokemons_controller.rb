class PokemonsController < ApplicationController
  def create
    @pokemon = Pokemon.new(pokemon_params)
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon.trainer = @trainer

    if @pokemon.save
      redirect_to trainer_path(@trainer)
    else
      render 'trainers/show' # render 'trainers/show.html.erb'
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy

    redirect_to trainer_path(@pokemon.trainer)
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image_url)
  end
end
