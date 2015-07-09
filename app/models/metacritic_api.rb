require 'unirest'

class MetacriticAPI

  Token = ENV["metacritic"]

  def game_suggest platform, title

    r = Unirest.get "https://metacritic-2.p.mashape.com/find/game",
  headers:{
    "X-Mashape-Key" => "#{Token}",
    "Accept" => "application/json"
  },
  parameters:{ 
   :platform => "#{platform}",
   :title => "#{title}" }

     s = Array.new
     s.push(r.body["result"]["name"])
     s.push(r.body["result"]["score"])
     s.push(r.body["result"]["thumbnail"])
     s.push(r.body["result"]["summary"])
     s.push(r.body["result"]["platform"])
     s.push(r.body["result"]["url"])
  
      Game.create! name: s[0], score: s[1], thumbnail: s[2], description: s[3], platform: s[4], url: s[5]
  end

end

