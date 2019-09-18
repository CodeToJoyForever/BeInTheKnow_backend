Rails.application.routes.draw do
   namespace :api do 
      root   to: 'sessions#welcome' 
  
    resources :sessions , only: [:create,:show]
    resources :users , only: [:create,:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
