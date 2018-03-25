
def get_first_name_of_season_winner(data, season)
  data.each do |key, val|
    if key == season
      return val[0]["name"].split(" ")[0]
    end
  end
  return "asdf"
end

def get_contestant_name(data, occupation)
  data.each do |key, val|
    val.each do |ele|
      if ele["occupation"] == occupation
        return ele["name"]
      end
    end
  end
  return "asdf"
end

def count_contestants_by_hometown(data, hometown)
  result = 0
  data.each do |key, val|
    val.each do |ele|
      if ele["hometown"] == hometown
        result += 1
      end
    end
  end
  result
end

def get_occupation(data, hometown)
  data.each do |key, val|
    val.each do |ele|
      if ele["hometown"] == hometown
        return ele["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)
  count = 0
  sum = 0
  data.each do |key, val|
    
    if key == season

      val.each do |ele|
        sum += ele["age"].to_i
        count += 1
      end

    end
  end
  
  if sum % count >= 13
    return (sum / count) +1
  else 
    return  sum / count
  end
  
end
