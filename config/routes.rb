Rails.application.routes.draw do

  resources :tv_episodes
  get 'game_favorites/create'

  get 'game_favorites/destroy'

  resources :games do
    post :get_barcode, on: :collection
  end

  devise_for :users

  devise_scope :user do
    get "auth/facebook/callback" => "users/omniauth_callbacks#facebook"
    get "auth/google/callback"   => "users/omniauth_callbacks#google"
    get "auth/linkedin/callback" => "users/omniauth_callbacks#linkedin"
    get "auth/github/callback"   => "users/omniauth_callbacks#github"
  end

  post '/favorites/:movieId'                =>  'favorites#create'
  delete '/favorites/destroy/:movieId'      =>  'favorites#destroy'

  post '/game_favorites/:gameId'            =>  'game_favorites#create'
  delete '/game_favorites/destroy/:gameId'  =>  'game_favorites#destroy'

  get 'pages/landing'
  root 'pages#landing'

  resources :people

  resources :movies do
    collection do
      post :get_barcode
      post :get_movie_info
      post :get_movies
    end
  end

  mount Shrine::DownloadEndpoint => "/attachments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
