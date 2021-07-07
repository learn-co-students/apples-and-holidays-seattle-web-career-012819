require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # holiday_hash = {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]6gtvtybbyyyyy
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

  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"
end

def add_supply_to_memorial_day(holiday_hash, supply1)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].insert(-1, supply1)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday_hash = {season => {holiday_name => supply_array}}
	holiday_hash.merge!(new_holiday_hash)
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = holiday_hash[:winter][:christmas] + holiday_hash[:winter][:new_years]
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays_hash|
    puts "#{season.capitalize}:"
    holidays_hash.each do |holiday, holiday_info_array|
	    puts "  #{holiday.to_s.split("_").map { |h| h.capitalize }.join(' ')}: #{holiday_info_array.join(", ")}"
	  end
  end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
	# return an array of holiday names (as symbols) where supply lists include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, holidays_hash|
  	holidays_hash.each do |holiday, holiday_info_array|
  		if holiday_info_array.include?("BBQ") == true
  			 bbq_holidays << holiday
  		end
  	end
  end
  return bbq_holidays
end
