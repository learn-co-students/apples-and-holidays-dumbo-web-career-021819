require 'pry'
holiday_supplies =
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash[:winter][:new_years].push(supply)
  holiday_hash[:winter][:christmas].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # Question 4
  # Write a method that adds a new holiday and its associated supplies to any season
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
newArray = []

holiday_hash.each do |seasons,holidays|
   if seasons == :winter
       holidays.each do |holiday, supply|
          newArray << supply
           #binding.pry
       end

   end
end

newArray.flatten
end

def all_supplies_in_holidays(holiday_hash)

holiday_hash.each do |season,value|

  puts "#{season.capitalize}:"
  value.each do |holiday,value|
    a = holiday.to_s
    b = a.split("_")
    a = b.join(" ").capitalize
    print "  #{a}:"
    value.each_with_index do |final, index|
      if index == value.size - 1
      puts " #{final}"
    else
      print " #{final},"

    end
    end
  end
end
end




#all_supplies_in_holidays(holiday_supplies)
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
