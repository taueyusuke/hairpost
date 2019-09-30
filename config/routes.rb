Rails.application.routes.draw do
  devise_for :users,
             controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'registrations/new'

  get '/users/:id', to: 'users#show', as: 'user'

  get 'likes/index'

  resources :posts, only: %i(new create inde show destroy) do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy)
    resources :comments, only: %i(create destroy)
  end
end
