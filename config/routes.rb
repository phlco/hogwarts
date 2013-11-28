Hogwarts::Application.routes.draw do
  resources :houses, :students
  resource :welcome

  root to: "welcome#index"
end