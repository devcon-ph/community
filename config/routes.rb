Rails.application.routes.draw do
  resources :events, only: [:index, :new, :create]
  resources :organizations, only: [:index]

  root to: 'pages#home'
end
