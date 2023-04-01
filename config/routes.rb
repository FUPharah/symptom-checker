Rails.application.routes.draw do
  root to: "pages#home"

  resources :diagnoses do
    collection do
      get :match_results
      post :match
    end
  end

  get 'symptoms/select', to: 'symptoms#select', as: :select_symptoms
  resources :symptoms, only: [:index]
  resources :specialties, only: [:index]
  resources :diagnoses, except: [:show]
end
