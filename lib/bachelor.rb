require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_info|
      if contestant_info["status"].include?("Winner") && season_number == season
        winner = contestant_info["name"]
      end
    end
  end

  return winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  output = ""
  
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_info|
      if contestant_info["occupation"].include?(occupation)
        output = contestant_info["name"]
      end
    end
  end
  return output
end


def count_contestants_by_hometown(data, hometown)
  counter = 0
  
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_info|
      if contestant_info["hometown"].include?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  occupation = ""
  
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_info|
      if contestant_info["hometown"].include?(hometown)
        occupation = contestant_info["occupation"]
        return occupation
      end
    end
  end
end

#structure = 
# { "season_number" => 
#   [ {contestant_info} ] }

def get_average_age_for_season(data, season)
  average = 0.0
  counter = 0
  
  data.each do |season_number, contestant_array|
    contestant_array.each do |contestant_info|
      if season_number == season
        average += contestant_info["age"].to_f
        counter += 1
      end
    end
  end
  
  return (average/counter).round
end



