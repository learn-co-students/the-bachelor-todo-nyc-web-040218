require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  winning_contestant = ""
  data.each do |season_title, contestants|
    if season_title == season
      contestants.each do |contestant_info|
        if contestant_info["status"].include?("Winner")
          winning_contestant = contestant_info["name"]
        end
      end
    end
  end
  winning_contestant = winning_contestant.split(" ")
  winning_contestant[0]
end

def get_contestant_name(data, occupation)
  occupation_contestant = ""
  data.each do |season_title, contestants|
    contestants.each do |contestant_info|
      if contestant_info["occupation"].include?(occupation)
        occupation_contestant = contestant_info["name"]
      end
    end
  end
  occupation_contestant
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season_title, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"].include?(hometown)
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  occupation_contestant = ""
  data.each do |season_title, contestants|
    contestants.each do |contestant_info|
      if contestant_info["hometown"].include?(hometown)
        occupation_contestant = contestant_info["occupation"]
        break
      end
    end
  end
  occupation_contestant
end

def get_average_age_for_season(data, season)
  # code here
  sum_of_ages_and_count = [0,0]
  data.each do |season_title, contestants|
    if season_title == season
      contestants.each do |contestant_info|
        sum_of_ages_and_count[0] += contestant_info["age"].to_i
        sum_of_ages_and_count[1] +=1
      end
    end
  end
  (sum_of_ages_and_count[0].to_f/sum_of_ages_and_count[1].to_f).round
end
