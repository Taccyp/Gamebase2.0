require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :user_id => 1,
        :id => "Id"
      ),
      Game.create!(
        :user_id => 1,
        :id => "Id"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Id".to_s, :count => 2
  end
end
