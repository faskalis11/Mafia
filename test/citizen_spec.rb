require 'rspec'
require_relative '../player'
require_relative '../game'
require_relative '../citizen'

describe 'Citizen behaviour' do
  it 'can be alive. Could be shot, then could be dead' do
    citizen = Citizen.new
    expect(citizen.dead).to be false
    citizen.got_shot
    expect(citizen.dead).to be true
  end
end
