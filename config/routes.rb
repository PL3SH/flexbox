Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get "tasks/index"
      # post "tasks/create"
      # put "tasks/update"
      # delete "tasks/destroy"
      resources :tasks

      devise_scope :user do
        post 'signup', to: 'registrations#create' 
        post 'login', to: 'sessions#create'
        delete 'logout', to: 'sessions#destroy'
      end
    end
  end
  
  devise_for :users, skip: [:sessions, :registrations], controllers: {
    registrations: 'api/v1/registrations',
    sessions: 'api/v1/sessions'
  }

  # /api/v1/tasks/index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
