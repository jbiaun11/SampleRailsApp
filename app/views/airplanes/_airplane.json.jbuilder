json.extract! airplane, :id, :name, :iata_code, :icao_code, :created_at, :updated_at
json.url airplane_url(airplane, format: :json)
