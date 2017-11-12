require 'rspec'
require 'rspec/expectations'
require_relative '../lib/player'
require_relative '../lib/citizen'
require_relative '../lib/mafia'

describe 'Player behaviour' do
  it 'should get a Citizen role' do
    player = Player.new
    player.role = 'Citizen'
    expect(player.role).to eq('Citizen')
  end

  it 'should get a Mafia role' do
    player = Player.new
    player.role = 'Mafia'
    expect(player.role).to eq('Mafia')
  end

  it 'should have gain experience' do
    player = Player.new
    player.experience += 10
    expect(player.experience).to eq(10)
  end
end

# Matcher nuolaida teisinga, sudetinga struktura, kolekcija objekto tvarkingas
RSpec::Matchers.define :be_role do |expected|
  match do |actual|
    actual.role.instance_of?(expected)
  end
end

player = Player.new
player.role = Mafia.new

RSpec.describe player do
  it { is_expected.to be_role(Mafia) }
end
