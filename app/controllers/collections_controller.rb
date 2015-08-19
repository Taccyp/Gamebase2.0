class CollectionsController < ApplicationController

def index 
  @collection = current_user.games
  @api_hit = APIS::Giantbomb.new
end

end