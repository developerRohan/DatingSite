Rails.application.routes.draw do
  
  root 'home#index'
  resources :users do
    member do
      get 'profile'
      get 'matches'
    end
  end  

  get 'auth/facebook/callback', to: 'sessions#create'
  # get 'users/index'

  # get 'users/edit'

  # get 'users/profile'

  # get 'users/matches'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
