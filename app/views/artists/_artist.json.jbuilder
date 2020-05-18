json.extract! artist, :id, :nombre, :descripcion, :informacion, :location_id, :state_id, :created_at, :updated_at
json.url artist_url(artist, format: :json)
