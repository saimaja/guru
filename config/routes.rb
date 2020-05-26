Rails.application.routes.draw do
    
    get 'login', to: 'sessions#show_login_form'
    post 'login', to: 'sessions#login_user'
    delete 'logout', to: 'sessions#logout_user'

    # post 'posts/:id', to: 'posts#create_comment'
 
    resources :posts do 
      resources :zens
      resources :comments
    end
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

