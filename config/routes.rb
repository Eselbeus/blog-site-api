Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :podcasts
      resources :articles

      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end

end
