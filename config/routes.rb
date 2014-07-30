Rails.application.routes.draw do

  root 'pages#home'

  resources :companies
  resources :status_updates
  resources :projects
  resources :team_members, only: [:create, :update, :destroy]

  devise_for :users, path_names: {sign_in: "signin", sign_out: "signout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  devise_scope :user do
    get "/signin" => "devise/sessions#new"
    get "/signout" => "devise/sessions#destroy"
  end

end
