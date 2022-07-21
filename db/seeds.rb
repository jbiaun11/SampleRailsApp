# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

#==== Loop through rows of CSV file ====#
# Rails.root return path file of current Rails project
# .join return exact path of CSV file
# headers: true treats first row of CSV file as a hearder row
# .create initialize a new record
CSV.foreach(Rails.root.join('lib/seed_csv/airplanes.csv'), headers: true) do |row|
  Airplane.create( {
    name: row["Name"],
    iata_code: row["IATA code"],
    icao_code: row["ICAO code"]
  } ) 
end