require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do | contestant |
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | season, contestants |
    contestants.each do | woman |
      if woman["occupation"] == occupation
        return woman["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do | season, contestants |
    contestants.each do | woman |
      if woman["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do | season, contestants |
    contestants.each do | woman |
      if woman["hometown"] == hometown
        return woman["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  cumulative_age = 0.0
  contestants_in_season = 0
  data[season].each do | contestant |
    cumulative_age += contestant["age"].to_f
    contestants_in_season += 1
  end
(cumulative_age / contestants_in_season).round
end
