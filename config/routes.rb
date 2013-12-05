Hogwarts::Application.routes.draw do
  root to: 'application#index'

  get  '/houses',            to: 'houses#index'
  get  '/houses/:house',     to: 'houses#show'
  resources :students, except: :edit
end
