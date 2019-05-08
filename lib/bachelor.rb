require 'pry'
winner_name = ""
def get_first_name_of_season_winner(data, season)
data[season].each do |contestant|
  contestant.each do |status, info|
if info == "Winner"
  winner_name = contestant["name"].split(" ").first
return winner_name
      end
    end
  end

end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |status,info|
        if info == occupation
          return contestant["name"]
        end
      end
    end
  end
end



def count_contestants_by_hometown(data, hometown)
counter = 0
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |status,info|
        if info == hometown
          counter +=1
        end
      end
    end
  end
  counter
  end


def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestant|
      contestant.each do |status,info|
        if info == hometown
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
total_ages = 0
counter = 0
  data[season].each do |contestant|
      contestant.each do |status,info|
        if status == "age"
          counter +=1
          total_ages  += info.to_f
        end
      end
end
  ave =(total_ages/counter)
  ave.round
end
