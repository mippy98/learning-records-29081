Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root to: "posts#index"
  resources :users, only: :show
  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
end
