Rails.application.routes.draw do
    
    get 'login', to: 'sessions#show_login_form'
    post 'login', to: 'sessions#login_user'
    delete 'logout', to: 'sessions#logout_user'
  
    resources :comments
    resources :zens
    resources :posts 
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

