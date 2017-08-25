Rails.application.routes.draw do
  resources :stories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  get 'ui_components', controller: 'ui_components', action: :index
end
