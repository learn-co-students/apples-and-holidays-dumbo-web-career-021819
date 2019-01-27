require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each {|x , y| y << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  
  holiday_hash.each do |season, holiday|
    holiday.each do |key, value|
      
      if key == :memorial_day
        value << supply 
      end 
    end 
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

  new_entry = {holiday_name => supply_array}
  holiday_hash[season] = new_entry  

  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  arr = []
  holiday_hash[:winter].each do |key, value| 
    value.each do |item|
      arr.push(item)
    end 
  end 
  arr 
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

    puts "#{season.to_s.capitalize!}:"

    holiday.each do |key, value|

      myarr = key.to_s.split("_")
    
      myarr.each do |thing|
        thing.capitalize!
      end 
    
      time = myarr.join(" ")

    puts "  #{time}: #{value.join(", ")}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  lets_eat = []
    
  holiday_hash.each do |season, holiday|
    
    holiday.each do |key, value|
      
      if value.include?("BBQ")
        lets_eat << key.to_sym
      end 
    end 
  end
  lets_eat
end


















