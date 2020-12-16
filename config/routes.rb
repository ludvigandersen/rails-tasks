Rails.application.routes.draw do
  
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {sessions: 'api/v1/users', registrations: 'api/v1/users'}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # mount_devise_token_auth_for :user, controllers: {users: :users}, path_names: { sign_in: :login }
      resources :users, only: %i[create]
      resources :clients, only: %i[index show create update delete]
      resources :tasks, only: %i[index show]
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #     resources :clients, only: %i[index show]
  #     resources :tasks, only: %i[index show]
  #     post 'users/create', to: 'users#create'
  #   end
  # end
end
