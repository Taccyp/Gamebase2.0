class WelcomeController < ApplicationController

def index
@search = APIS::Giantbomb.new.game_search('total war')["results"]
end



end