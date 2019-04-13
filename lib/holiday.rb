require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
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
  # return the second element in the 4th of July array
  second_July_decoration = ""
  holiday_hash.each do |season, holidays|
    puts "The SEASON of #{season} has these HOLIDAYS: #{holidays}"
  holidays.each do |holiday, decorations|
    puts "This particular holiday, #{holiday}, has these decorations: #{decorations}"
    if holiday == :fourth_of_july
      puts "The if statement proved true"
      puts decorations[1]
      second_July_decoration = decorations[1]
    end
  end
end
second_July_decoration
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, decoration|
      if holiday == :christmas || holiday == :new_years
        decoration.push(supply)
      end
    end
  end
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, decoration|
      if holiday == :memorial_day
        decoration.push(supply)
      end
    end
  end
holiday_hash

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash.each do |season_in_hash, holidays|
    if season_in_hash = season
      holiday_hash[season_in_hash] = {holiday_name => supply_array}
    end
  end

  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_decor = []
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, decorations|
        puts "The HOLIDAY is #{holiday} and the decorations include #{decorations}"
          decorations.each do |decoration|
            puts decoration
            winter_decor.push(decoration)
          end
      end
    end
  end
winter_decor
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  season_tracking = nil

  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, decoration|
    # If the season has not been used before then it is output
      if season_tracking == nil || season.to_s != season_tracking
        puts "#{season.to_s.capitalize}:".chomp
        # now that the season has been used, add it to season_tracking to week out duplicates
        season_tracking = season.to_s
        # If the holiday is snake case then we have to separate it at the "_" and rejoin it with a space
        # All words in the holiday should be capitalized
        if holiday.to_s.include?('_')
        puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{decoration.join(", ")}".chomp
        else
        # This handles if the holiday is not snake case
        puts "  #{holiday.capitalize}: #{decoration.join(", ")}".chomp
        end
      # Here the season has already been added so we skip adding it to the formatted_string and skip straight to adding the holiday
      elsif season_tracking == season.to_s
        if holiday.to_s.include?('_')
        puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{decoration.join(", ")}".chomp
        else
        # This handles if the holiday is not snake case
        puts "  #{holiday.capitalize}: #{decoration.join(", ")}".chomp
        end
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holiday_array = []

  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, decorations|
      decorations.each do |decor|
        if decor.to_s == "BBQ"
          holiday_array.push(holiday)
        end
      end
    end
  end
  holiday_array
end







