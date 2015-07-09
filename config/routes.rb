Rails.application.routes.draw do
  devise_for :users
  resources :games 
  resources :ask_game
  #post "/suggest_game" => "game#search",   as: search_game

  root to: 'games#index'
end
