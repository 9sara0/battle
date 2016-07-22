require 'game'

describe Game do

  let(:player_1)    { double :player_1 }
  let(:player_2)     { double :player_2 }
  let(:player) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'returns an instance of Game' do
    Game.create_game(player_1, player_2)
    expect(Game.game_instance).to be_an_instance_of(Game)
  end

  describe '#player_1' do
    it 'retrieves player one' do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'player two' do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#current_turn' do
    it 'returns current turn player' do
      expect(game.current_turn).to eq(player_1)
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#game_over' do
   it 'loses the game' do
     allow(player).to receive(:alive?).and_return(false)
     expect(game.game_over(player)).to eq true
   end

   it 'allows the game to continue' do
     allow(player).to receive(:alive?).and_return(true)
     expect(game.game_over(player)).to eq false
   end
  end

end
