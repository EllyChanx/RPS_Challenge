class Game_1

  def initialize(player1, player2)
    @players = [player1, player2]
    # @player_1_action = player_1_action
    # @player_2_action = player_2_action
  end

  def self.create(player1, player2)
    @game = Game_1.new(player1, player2)
  end

  def self.instance
    @game
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def player_1_action(choice)
    choice
  end

  def player_2_action(choice)
    choice
  end

end