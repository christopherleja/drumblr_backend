Rails.application.routes.draw do
  resources :tracks
  resources :beat_tracks
  resources :beats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
