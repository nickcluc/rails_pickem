# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {name: "Danny", email: "danny@danny.com"},
  {name: "Steve", email: "steve@steve.com"},
  {name: "Nick", email: "nick@nick.com"}
]

picks = [
  {"id"=>2014112000, "home"=>"OAK", "away"=>"KC", "day"=>20, "month"=>11, "time"=>1416489900, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>24, "away_score"=>20},
  {"id"=>2014112300, "home"=>"ATL", "away"=>"CLE", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>24, "away_score"=>26},
  {"id"=>2014112301, "home"=>"BUF", "away"=>"NYJ", "day"=>24, "month"=>11, "time"=>1416832200, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>38, "away_score"=>3},
  {"id"=>2014112302, "home"=>"CHI", "away"=>"TB", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>21, "away_score"=>13},
  {"id"=>2014112303, "home"=>"HOU", "away"=>"CIN", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>13, "away_score"=>22},
  {"id"=>2014112304, "home"=>"IND", "away"=>"JAC", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>23, "away_score"=>3},
  {"id"=>2014112305, "home"=>"MIN", "away"=>"GB", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>21, "away_score"=>24},
  {"id"=>2014112306, "home"=>"NE", "away"=>"DET", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>34, "away_score"=>9},
  {"id"=>2014112307, "home"=>"PHI", "away"=>"TEN", "day"=>23, "month"=>11, "time"=>1416722400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>43, "away_score"=>24},
  {"id"=>2014112308, "home"=>"SD", "away"=>"STL", "day"=>23, "month"=>11, "time"=>1416733500, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>27, "away_score"=>24},
  {"id"=>2014112309, "home"=>"SEA", "away"=>"ARI", "day"=>23, "month"=>11, "time"=>1416733500, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>19, "away_score"=>3},
  {"id"=>2014112310, "home"=>"DEN", "away"=>"MIA", "day"=>23, "month"=>11, "time"=>1416734700, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>39, "away_score"=>36},
  {"id"=>2014112311, "home"=>"SF", "away"=>"WAS", "day"=>23, "month"=>11, "time"=>1416734700, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>17, "away_score"=>13},
  {"id"=>2014112312, "home"=>"NYG", "away"=>"DAL", "day"=>23, "month"=>11, "time"=>1416749400, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>28, "away_score"=>31},
  {"id"=>2014112400, "home"=>"NO", "away"=>"BAL", "day"=>24, "month"=>11, "time"=>1416835800, "season_type"=>"REG", "week"=>12, "year"=>"2014", "final"=>1, "home_score"=>27, "away_score"=>34}
]

users.each do |info|
  user = User.new
  user.name = info[:name]
  user.email = info[:email]
  user.save
end

picks.each do |info|
  pick = Pick.new
  pick.game_id = info["id"]
  pick.user_id = 3
  pick.team = info["away"]
  pick.save
end

picks.each do |info|
  pick = Pick.new
  pick.game_id = info["id"]
  pick.user_id = 2
  pick.team = info["away"]
  pick.save
end

picks.each do |info|
  pick = Pick.new
  pick.game_id = info["id"]
  pick.user_id = 1
  pick.team = info["home"]
  pick.save
end
