Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    get "/auth/facebook/callback" => "users/omniauth_callbacks#facebook"
    get "/auth/google/callback"   => "users/omniauth_callbacks#google"
    get "/auth/linkedin/callback" => "users/omniauth_callbacks#linkedin"
    get "/auth/github/callback"   => "users/omniauth_callbacks#github"
  end

  post 'favorites/:movieId'           =>  'favorites#create'
  delete 'favorites/destroy/:movieId' =>  'favorites#destroy'

  post 'movies/get_movie_info' => 'movies#get_movie_info'

  get 'pages/landing'
  root 'pages#landing'

  resources :movies do
    collection do
      post :get_barcode
      post :get_movie_info
    end
  end

  mount Shrine::DownloadEndpoint => "/attachments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
