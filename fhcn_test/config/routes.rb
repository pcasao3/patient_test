Rails.application.routes.draw do
  get "welcome/index"

  root to:"welcome#index"

  get "/fhcn_test", to:"static_pages#fhcn_test"
  post "/fhcn_test", to:"static_pages#fhcn_test"

  resources :fhcn_patient, controller: "fhcn_patients"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
