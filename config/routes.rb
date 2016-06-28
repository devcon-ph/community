Rails.application.routes.draw do
  resources :events, only: [:new, :create]
  resources :organizations, only: [:index]
  resources :calendars, only: [] do
    collection do
      get :callback
    end
  end

  root to: 'pages#home'
end
