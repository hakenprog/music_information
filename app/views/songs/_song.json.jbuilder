json.extract! song, :id, :nombre, :duracion_sec, :album_id, :created_at, :updated_at
json.url song_url(song, format: :json)
