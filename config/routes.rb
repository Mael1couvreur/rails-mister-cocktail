Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index', as: 'cocktails'
  resources :doses, only: [:destroy]
  resources :cocktails, only: %i[new create show] do
    resources :doses, only: %i[new create]
  end
end
