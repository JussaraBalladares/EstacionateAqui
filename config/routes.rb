Rails.application.routes.draw do
  
  resources :duenos
  resources :estacionamientos

  root to: 'estacionamientos#index'


end
