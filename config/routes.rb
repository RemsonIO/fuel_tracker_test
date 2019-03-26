Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'pages#index'

  get 'refuel',   to: 'pages#refuel',  as: :refuel_page
  get 'managers', to: 'managers#show',   as: :root_manager_page

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
