class Game_1

  attr_reader :player1_action; :player2_action

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1_action = player1_action
    @player2_action = player2_action
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

end