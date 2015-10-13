require './db/setup'
require './lib/all'


#pilots
fry = Shipment.where({destination: "Earth"})
puts "Fry flew #{fry.count} trips"

amy = Shipment.where({destination: "Mars"})
puts "Amy flew #{amy.count} trips"

bender = Shipment.where({destination: "Uranus"})
puts "Bender flew #{bender.count} trips"

leela = Shipment.count - (fry.count + amy.count + bender.count)
puts "Leela flew #{leela} trips"


#total profit
total_profit = Shipment.profit
puts "Planet Express made $#{total_profit} this week."

#bonous
fbonus = fry.profit
puts "Fry's bonus is $#{fbonus/10} "

abonus = amy.profit
puts "Amy's bonus is $#{abonus/10}"

bbonus = bender.profit
puts "Bender's bonus is $#{bbonus/10}"

llbonus = Shipment.profit - (fbonus + abonus +bbonus)
puts "Leela's bonus is $#{llbonus/10}"
