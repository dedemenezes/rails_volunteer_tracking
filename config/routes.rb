Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


  root to: "volunteers#index"
  resources :volunteers, only: [:show, :new, :create] do
    resources :shifts, only: %i[new create]
  end

end
