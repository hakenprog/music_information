json.extract! album, :id, :nombre, :descripcion, :num_canciones, :discografica, :album_type_id, :created_at, :updated_at
json.url album_url(album, format: :json)
