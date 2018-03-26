def get_first_name_of_season_winner(data, season)
  
  data.each do |season_1, season_data|
    if season_1 == season
    season_data.each do |v|
      if v["status"] == "Winner"
        return v["name"].split(" ")[0]
      end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_data, player_data|
    player_data.each do |v|
      if v["occupation"] == occupation
        return v["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_data, player_data|
    player_data.each do |v|
      if v["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_data, player_data|
    player_data.each do |v|
      if v["hometown"] == hometown
        return v["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  contestant_count = 0
 new_array = []
  data.each do |season_1, season_data|
    if season_1 == season
    season_data.each do |v|
      new_array << v["age"].to_i
      new_array.each do |x|
        sum += x
        contestant_count += 1
      end
    end
    end
  end
  average = sum.to_f / contestant_count.to_f
  average.ceil
end
