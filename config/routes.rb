Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    get 'symptoms/select', to: 'symptoms#select', as: :select_symptoms
    post '/match_diagnoses', to: 'diagnoses#match', as: :match_diagnoses
    get '/match_results', to: 'diagnoses#match_results', as: 'match_results'
    resources :symptoms, only: [:index, :show]
    resources :specialties, only: [:index, :show]
    resources :diagnoses, only: [:index]
end
