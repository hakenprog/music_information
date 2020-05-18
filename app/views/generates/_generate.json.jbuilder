json.extract! generate, :id, :song, :nombre, :descripcion, :duracion_sec, :album_id, :created_at, :updated_at
json.url generate_url(generate, format: :json)
