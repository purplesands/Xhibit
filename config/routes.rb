Rails.application.routes.draw do
  resources :event_users
  resources :location_types
  resources :locations, except: [:destroy]
  resources :events, except: [:destroy]
  resources :reviews, except: [:show]
  resources :users
  get '/login', to: "sessions#new", as: 'login'
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
