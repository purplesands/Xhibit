Rails.application.routes.draw do
  resources :event_users
  resources :location_types
  resources :locations, except: [:destroy]
  resources :events, except: [:destroy]
  resources :reviews, except: [:show]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
