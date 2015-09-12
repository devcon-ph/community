Rails.application.routes.draw do
  resources :events

  root to: 'pages#home'
end
