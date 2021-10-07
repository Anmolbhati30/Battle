require "player"

describe Player do
  let(:bob) { described_class.new("Bob") }
  let(:jack) { described_class.new("Jack") }
  it "has a name" do
    expect(bob.name).to eq "Bob"
  end

  it "has a default HP" do
    expect(bob.hp).to eq described_class::DEFAULT_HP
  end

  describe "#attack" do
    it "reduces attacked players HP by 10" do
      expect { bob.attack(jack) }.to change { jack.hp }.by(-10)
    end
  end
end
