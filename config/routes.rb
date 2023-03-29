Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :symptoms, only: [:index, :show]
    resources :specialties, only: [:index, :show]
    resources :diagnoses, only: [:index, :show]
end
