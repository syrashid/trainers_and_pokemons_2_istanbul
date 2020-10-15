Rails.application.routes.draw do
  root to: 'trainers#index'
  resources :trainers do
    resources :pokemons, only: [:create]
  end
  resources :pokemons, only: [:destroy] do
    resources :pokemon_moves, only: [:new, :create]
  end
end
