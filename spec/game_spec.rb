require "game"

describe Game do
  let(:bob) { instance_double(Player, :name => "Bob", :hp => 100) }
  let(:jack) { instance_double(Player, :name => "Jack", :hp => 100) }
  let(:game) { described_class.new(bob, jack) }

  describe "#initialize" do
    it "takes two players" do
      expect(game.player_1).to eq bob
      expect(game.player_2).to eq jack
    end
  end

  describe "#attack" do
    it "reduces attacked players HP by 10" do
      expect(jack).to receive(:reduce_hp).with(10)
      game.attack(jack)
    end
  end
end
