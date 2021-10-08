require 'player'

describe Player do
  subject(:Charlie) { Player.new('Charlie') }
  subject(:Bob) { Player.new('Bob') }

  describe '#name' do
    it 'returns the name' do
      expect(charlie.name).to eq 'Charlie'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(charlie.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(bob).to receive(:receive_damage)
      charlie.attack(bob)
    end
  end

  describe '#receive_message' do
    it 'reduces the player hit points' do
      expect { charlie.receive_damage }.to_change { charlie.hit_points }.by(-10)
    end
  end
end
