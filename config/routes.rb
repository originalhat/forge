Rails.application.routes.draw do
  root 'builds#index'
  resources :builds
  resources :pipelines
  resources :organizations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
