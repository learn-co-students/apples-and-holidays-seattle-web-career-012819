require 'pry'
# holiday_hash = {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter][:christmas].push(supply)
holiday_hash[:winter][:new_years].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten!
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, holiday|
  puts "#{season.capitalize}:"
holiday.each do |event, stuff|
  if event == :new_years
    puts "  New Years: #{stuff.join", "}"
  elsif event == :fourth_of_july
    puts "  Fourth Of July: #{stuff.join", "}"
  elsif event == :memorial_day
    puts "  Memorial Day: #{stuff.join", "}"
  else
     puts "  #{event.capitalize}: #{stuff.join", "}"
  end end
end
end

def all_holidays_with_bbq(holiday_hash)
  tarot = []
holiday_hash.each do |season, holiday|
holiday.each do |event, stuff|
  if stuff.include?("BBQ") == true
   tarot << event.to_sym
else end
end
end
tarot
end
