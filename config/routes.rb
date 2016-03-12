Rails.application.routes.draw do


  root "habits#index"

 devise_for :users, controllers: {
 registrations: 'users/registrations'
 }

resources :habits

resources :profiles


  
end
