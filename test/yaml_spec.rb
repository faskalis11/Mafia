require 'rspec'
require 'yaml'
require_relative '../lib/player'
require_relative '../lib/yaml'


RSpec.describe 'Yaml read and write' do
  it 'write to file' do
    yaml = Yaml.new
    player = Player.new
    player.experience = 45
    yaml.write_player('files/write_test.yml', player)
    player_parsed = begin
      YAML.load(File.open('files/write_test.yml'))
    end
    expect(player_parsed.experience).to eq(45)
  end

  it 'read from file' do
    yaml = Yaml.new
    player = yaml.read_player('files/read_test.yml')
    expect(player.experience).to eq(100)
  end

end
