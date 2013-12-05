Hogwarts::Application.routes.draw do
  root to: 'application#index'

  resources :houses, only: [:index, :show]
  resources :students, except: :edit
end
