Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # create routes for crud automatically
  resources :articles

  root to: 'articles#index'


end
