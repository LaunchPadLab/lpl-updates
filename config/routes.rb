Rails.application.routes.draw do

  root 'pages#home'

  mount_griddler

  resources :companies, only: [:create, :update, :destroy]
  resources :projects, only: [:create, :update, :destroy] do
    get :autocomplete_user_username, :on => :collection
    resources :status_updates, only: [:new, :create]
  end
  resources :team_members, only: [:create, :update, :destroy]

  devise_for :users, path_names: {sign_in: "signin", sign_out: "signout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  devise_scope :user do
    get "/signin" => "devise/sessions#new"
    get "/signout" => "devise/sessions#destroy"
  end

end
