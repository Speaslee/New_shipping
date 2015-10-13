class Shipment < ActiveRecord::Base

  def self.profit
    profit = 0
    self.all.each do |s|
      profit += s.number_of_crates * s.profit_per_crates
    end
    profit
  end
end
