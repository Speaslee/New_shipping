require 'csv'
require './db/setup.rb'
require './lib/all.rb'

CSV.foreach("shipping.csv", headers: true) do |row|
  s = Shipment.new
  s.destination = row[0]
  s.description = row[1]
  s.number_of_crates = row[2]
  s.profit_per_crates =row[3]
  s.save
end
