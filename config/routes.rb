Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "players#index"

  resources :players

  patch 'shot' => 'players#shot', as: :player_shot
  patch 'reset_game' => 'players#reset_game', as: :players_reset
end
