json.extract! artist_album, :id, :artist_id, :album_id, :created_at, :updated_at
json.url artist_album_url(artist_album, format: :json)
