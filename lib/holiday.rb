require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday,item|
    item << supply
    puts item 
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday,item|
    item << supply
    puts item
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect do |holiday,supplies|
    supplies
  end
  array.flatten 
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_hashes|
    puts "#{season.to_s.capitalize}:" 
    holiday_hashes.each do |holiday,supplies|
      cap_hol = holiday.to_s.split('_').each {|x| x.capitalize!}.join(' ')
        puts "  #{cap_hol}: #{supplies.join(', ')}"

    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_array = []
  holiday_hash.each do |season,value|
    value.each do |name, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          holiday_array << name
        end
      end
    end
  end
  holiday_array
end







