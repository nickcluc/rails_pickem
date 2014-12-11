require 'net/http'
# require 'sinatra'
# require 'sinatra/reloader'
require 'JSON'
require 'pry'

api_key = ENV["NFL_API_KEY"]
uri = URI("https://profootballapi.com/schedule")
response = Net::HTTP.post_form(uri, { "api_key" => api_key,
  "season"=>'REG',
  "week"=> 12,
  "year"=>2014,
  })

data = JSON.parse(response.body)
binding.pry
File.open('Games.json', 'w') {|f| f.puts data}
# score = 0

# data.each do |game|
#   p "#{game['away']} @ #{game['home']} Pick the winner! (h or a)"
#   pick = gets.chomp.downcase
#   user_pick = ''
#   until (user_pick == game["home"]) || (user_pick == game["away"])
#     if (pick == 'h') || (pick == 'home')
#       user_pick = game["home"]
#     elsif (pick == 'a') || (pick == 'away')
#       user_pick = game["away"]
#     else
#       "pick a valid team! (home or away)"
#     end
#   end
#
#   if game["home_score"] == game["away_score"]
#     winner = "Tie"
#   elsif game["home_score"] > game["away_score"]
#     winner = game["home"]
#   else
#     winner = game["away"]
#   end
#
#   p "Wk: #{game["week"]} - #{game["away_score"]} #{game["away"]} @ #{game["home"]} #{game["home_score"]}, Winner: #{winner}"
#
#     # binding.pry
#   if winner == user_pick
#     score += 1
#   end
#
#
# end

# p "You got #{score} out of #{data.length} correct!"
