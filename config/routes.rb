Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/home', to: 'pages#home', as: 'home_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :workplaces do
    resources :bookings
  end
end
