Rails.application.routes.draw do
<<<<<<< Updated upstream
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  root to: "posts#index"
  get 'posts/index'
  devise_for :users
>>>>>>> Stashed changes
end
