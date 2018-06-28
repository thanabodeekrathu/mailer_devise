Rails.application.routes.draw do
  get 'project/index'
  get 'home/index'
  
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users, controllers: { sessions: 'users/sessions' }

  authenticated :user do
    root to: 'home#index'
  end

  unauthenticated :user do 
    devise_scope :user do
      root to: 'devise/sessions#new' 
    end
  end
end
