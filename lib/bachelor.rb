require 'pry'

def get_first_name_of_season_winner(data, season)
  contestants = data[season]
  contestants.each do |contestant|
    if contestant["status"] == "Winner"
        return get_first_name(contestant["name"])
    end
  end
end

def get_first_name(contestant)
    contestant.split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["occupation"] == occupation
            return contestant["name"]
        end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
            count += 1
        end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
        if contestant["hometown"] == hometown
            return contestant["occupation"]
        end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = data[season]
  total_age = 0
  number_of_contestants = contestants.length
  contestants.each do |contestant|
    total_age += contestant["age"].to_f
  end
  (total_age / number_of_contestants + 0.5).to_i
end
