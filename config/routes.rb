Rails.application.routes.draw do
  
  root "pages#home"
  get 'pages/home', to: 'pages#home'
  
  resources :recipes do
    resources :comments, only: [:create]
  end
  
  get '/signup', to: 'chefs#new'
  resources :chefs, except: [:new]
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :ingredients, excpet: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount ActionCable.server => '/cable'
  
  get '/chat', to: 'chatrooms#show'
  
  resources :messages, only: [:create]
  
end
