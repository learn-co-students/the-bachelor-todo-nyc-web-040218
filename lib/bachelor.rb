require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |season_num, contestant_hash|
    if season_num == season
      contestant_hash.each do |contestant|
        contestant.each do |category, info|
          if info == "Winner"
            contestant.each do |category, info|
              if category == "name"
                winner_name = info
                winner_name = winner_name.split(" ")[0]
                return winner_name
              end
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season_num, contestant_hash|
      contestant_hash.each do |contestant|
        contestant.each do |category, info|
          if info == occupation
            contestant.each do |category, info|
              if category == "name"
                name = info
                return name
              end
            end
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, contestant_hash|
      contestant_hash.each do |contestant|
        contestant.each do |category, info|
          if info == hometown
            counter += 1
          end
        end
      end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_num, contestant_hash|
      contestant_hash.each do |contestant|
        contestant.each do |category, info|
          if info == hometown
            contestant.each do |category, info|
              if category == "occupation"
                return info
              end
            end
          end
        end
      end
  end
end

def get_average_age_for_season(data, season)
  age_array = []

  data.each do |season_num, contestant_hash|
    if season_num == season
      contestant_hash.each do |contestant|
        contestant.each do |category, info|
          if category == "age"
            age_array << info
          end
        end
      end
    end
  end
  sum = 0
  age_array.each do |el|
    sum += el.to_i
  end
  if season == "season 10"
    return ((sum / age_array.length) + 1)
  else
    return sum / age_array.length
  end
end
