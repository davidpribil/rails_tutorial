Rails.application.routes.draw do
  resources :users do
    collection do
      get :validate_email
    end
  end
end
