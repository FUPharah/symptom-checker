Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    get 'symptoms/select', to: 'symptoms#select', as: :select_symptoms
    post 'diagnoses/match', to: 'diagnoses#match', as: :match_diagnoses
    resources :symptoms, only: [:index, :show]
    resources :specialties, only: [:index, :show]
    resources :diagnoses, only: [:index]
end
