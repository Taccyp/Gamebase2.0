require 'net/http'
require 'json'

class APIS::Giantbomb

  def game_search(game_name)
    hit_api("http://192.168.1.100/phproxy/index.php?q=http%3A%2F%2Fwww.giantbomb.com%2Fapi%2Fsearch%2F%3Fapi_key%3D1a41f94a37f18d50c2145d005aa5c56f0b519232%26format%3Djson%26query%3D%#{game_name}%22%26resources%3Dgame&hl=3e5")

  end

  def game_by_id(id)
    hit_api("http://192.168.1.100/phproxy/index.php?q=http%3A%2F%2Fwww.giantbomb.com%2Fapi%2Fgame%2F#{id}%2F%3Fapi_key%3D1a41f94a37f18d50c2145d005aa5c56f0b519232%26format%3Djson&hl=3e5")
  end

def hit_api(inputstring)
  escapedString = URI::escape(inputstring)
  uri = URI(escapedString)
  JSON.parse(Net::HTTP.get(uri))
end

end
