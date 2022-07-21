class CreateAirplanes < ActiveRecord::Migration[7.0]
  # migration that adds or removes tables, columns, or entities
  def change
    # adds a table called airplanes with:
    # - a string column called name,
    # - a string column called iata_code,
    # - a string column called icao_code
    create_table :airplanes do |t|
      t.string :name
      t.string :iata_code
      t.string :icao_code

      # automatically adds two columns, created_at and updated_at
      t.timestamps
    end
  end
end
