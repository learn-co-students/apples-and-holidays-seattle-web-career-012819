require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |check_season, data|
    if check_season == season 
      data[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  flat_array = holiday_hash.collect do |season, data|
    supply_array = []
    if season == :winter
      supply_array = data.collect do |holiday, supplies|
        supplies.collect do |item|
          item
        end
      end
    end
    supply_array
  end
  flat_array.flatten
end


def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |holiday, supplies|
      holiday_line = "  #{ holiday.to_s.split("_").collect { |word| word.capitalize! }.join(" ") }: "
      supplies.each_with_index do |item, index|
        comma = (index == supplies.length - 1) ? "" : ", "
        holiday_line << "#{item}#{comma}"
      end
      puts holiday_line 
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  result = []
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supply|
      if supply.include?("BBQ")
        result << holiday
      end
    end
  end
  result
end











