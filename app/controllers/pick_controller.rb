class PickController < ApplicationController

  def api_connection(week_number)

    api_key = ENV["NFL_API_KEY"]
    uri = URI("https://profootballapi.com/schedule")
    response = Net::HTTP.post_form(uri, { "api_key" => api_key,
      "season"=>'REG',
      "week" => "#{week_number}",
      "year"=>2014,
      })
      JSON.parse(response.body)

  end

  def show
    @games = api_connection(params["week"])
  end

  def create
    binding.pry
  end

end
