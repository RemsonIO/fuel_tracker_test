Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  root 'pages#index'

  get  'managers', to: 'managers#show',   as: :root_manager_page
  post 'refuel',   to: 'pages#refuel',    as: :create_refuel_info


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
