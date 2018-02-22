Rails.application.routes.draw do
  get 'welcome/index'

  resources :prizes
  resources :contestants
  resources :pick_name

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
