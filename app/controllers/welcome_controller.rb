class WelcomeController < ApplicationController

def index
  @reviews = Review.last(9).reverse
  @games = Game.all
end



end