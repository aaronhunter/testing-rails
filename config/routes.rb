Rails.application.routes.draw do
  resources :links, only: [:new, :show, :create]

  root to: 'links#index'
end
