require "game"

describe Game do
  let(:bob) { instance_double(Player, :name => "Bob", :hp => 100) }
  let(:jack) { instance_double(Player, :name => "Jack", :hp => 100) }

  it "takes two players" do
    game = described_class.new(bob, jack)
    expect(game.player_1).to eq bob
    expect(game.player_2).to eq jack
  end
end
