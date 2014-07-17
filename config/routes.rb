Rails.application.routes.draw do

  root 'companies#show'

  resources :companies
  resources :status_updates
  resources :projects

  devise_for :users
  devise_scope :user do
    # root to: "devise/sessions#new"
    get "/signup" => "devise/registrations#new"
    get "/signin" => "devise/sessions#new"
    get "/signout" => "devise/sessions#destroy"
  end

end
