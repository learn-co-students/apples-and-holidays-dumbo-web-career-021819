require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
  holiday_supplies[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter].collect do |holiday, item|
        item << supply
  end 
end 


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring].collect do |holiday, item|
    item << supply
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_array = holiday_hash[:winter].values 
  winter_array.join(", ")

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
    holiday.each do |holiday, items|
      puts "  #{holiday.to_s.split("_").map {|x| x.capitalize}.join(" ")}: #{items.join(', ')}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)

  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday_name, item|
      if item.include?("BBQ")
        holiday_name
      end
    end 
  end 
  .flatten.compact
end







