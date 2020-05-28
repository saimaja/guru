Rails.application.routes.draw do
    
    
  get 'follows/create'
  get 'follows/destroy'
    root to: "application#homepage"
    
    get 'login', to: 'sessions#show_login_form'
    post 'login', to: 'sessions#login_user'
    delete 'logout', to: 'sessions#logout_user'
    get 'profile', to: 'posts#index'

    get 'feed', to: 'users#feed'


    # post 'posts/:id', to: 'posts#create_comment'
    
    resources :users do 
      resources :follows
    end
      
    resources :posts do 
        resources :zens
        resources :comments
      end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

