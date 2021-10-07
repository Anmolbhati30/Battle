class Player
  attr_reader :name, :hp
  DEFAULT_HP = 100

  def initialize(name, hp: DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(opponent)
    opponent.reduce_hp(10)
  end

  protected

  def reduce_hp(amount)
    @hp -= amount
  end
end