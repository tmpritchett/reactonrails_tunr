
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      resources :artists do
        resources :songs
      end
    end
  end
    
