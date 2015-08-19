require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :user_id => 1,
      :id => "MyString"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_user_id[name=?]", "game[user_id]"

      assert_select "input#game_id[name=?]", "game[id]"
    end
  end
end
