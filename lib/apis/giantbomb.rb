require 'net/http'
require 'json'

class APIS::Giantbomb

  def game_search(game_name)
    hit_api("http://www.giantbomb.com/api/search/?api_key=#{ENV['giantbomb_api']}&format=json&query=#{game_name}&resources=game")

  end

  def game_by_id(id)
    hit_api("http://www.giantbomb.com/api/game/#{id}/?api_key=1#{ENV['giantbomb_api']}&format=json")
  end

  def hit_api(inputstring)
    proxyurl = "us-east-1-static-hopper.quotaguard.com"
    proxyport = 9293
    user = "quotaguard3596"
    pass = "a62d6d50d42f"
    proxy = Net::HTTP::Proxy(proxyurl,proxyport,user,pass)
    escapedString = URI::escape(inputstring)
    uri = URI(escapedString)
    JSON.parse(proxy.get(uri))
  end

end
