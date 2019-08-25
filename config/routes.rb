Rails.application.routes.draw do
  get 'relationships/follow_user'
  get 'relationships/unfollow_user'
  get 'profiles/show'
  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  root :to => "devise/sessions#new"

  resources :posts

  get ':user_name', to: 'profiles#show', as: :profile

  resources :profiles
  post ':user_name/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':user_name/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
end
