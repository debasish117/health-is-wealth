Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  get "up" => "rails/health#show", as: :rails_health_check
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # devise_scope :user do
      #   resources :registrations, only: [ :create ]
      #   resource :session, only: [ :create, :destroy ]
      # end
      resources :meals
      resources :profiles, only: [:show, :edit, :update]
      resources :progresses
      resources :workout_plans
    end
  end
end
