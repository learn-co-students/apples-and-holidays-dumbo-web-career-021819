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
  holiday_hash.each do |season, holidays|
    holidays.each do |event, item|
      if event == :fourth_of_july
        return item[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |event, item|
      if event == :christmas || event == :new_years
        item << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holidays|
    holidays.each do |event, item|
      if event == :memorial_day
        item << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holidays[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies_in_winter = []
  holiday_hash.each do |seasons, holidays|
    if seasons == :winter
      holidays.each do |events, items|
        all_supplies_in_winter.push(items)
      end
    end
  end
  all_supplies_in_winter.flatten
end

def all_supplies_in_holidays(holiday_hash)
  cap_holiday = ""
  cap_holiday_a = []
  temp_items_s = ""
  holiday_hash.each do |seasons, events|
    puts "#{seasons.to_s.capitalize}:"
    events.each do |holidays, items|
      if holidays.to_s.include?("_")
        cap_holiday = holidays.to_s.capitalize
        cap_holiday_a = cap_holiday.split("_")
        cap_holiday_a.delete_if{|item| item == "_"}
        cap_holiday_a.each do |word|
          word.capitalize!
        end
        cap_holiday = cap_holiday_a.join(" ")
      else
        cap_holiday = holidays.to_s.capitalize
      end
      temp_items_s = items.join(", ")
      puts "  #{cap_holiday}: #{temp_items_s}"
      temp_items_s = ""
      # binding.pry
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |events, items|
      holidays_with_bbq << events if items.include?("BBQ")
    end
  end
  holidays_with_bbq
end


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
#
# season = :fall
# holiday_name = :columbus_day
# supply_array = ["corn", "squash", "beans"]
# all_supplies_in_holidays(holiday_hash)
# all_holidays_with_bbq(holiday_hash)
# # add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
