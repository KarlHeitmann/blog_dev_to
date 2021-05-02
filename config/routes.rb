Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  get 'comments/:id/touch', to: 'comments#touch'

  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
