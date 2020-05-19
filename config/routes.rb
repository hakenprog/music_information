Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :generates
  resources :states
  resources :countries
  resources :provinces
  resources :cities
  resources :locations
  resources :genres
  resources :albums
  resources :songs
  resources :artists
  resources :genre_artists
  resources :album_types
  resources :artist_albums
  get '/genre_artists/:artist_id/add_genres', to: 'genre_artists#add_genres'
  post '/genre_artists/add_genres', to: 'genre_artists#create'
  get '/artist_albums/:artist_id/add_albums', to: 'artist_albums#add_albums'
  post '/artist_albums/add_albums', to: 'artist_albums#create'
  get '/songs/:album_id/add_genres', to: 'songs#add_songs', as: 'add_songs_path'  
end
