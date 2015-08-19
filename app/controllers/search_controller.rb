class SearchController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @search = APIS::Giantbomb.new.game_search(params[:search_input])["results"]
  end

end