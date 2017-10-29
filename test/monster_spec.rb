require 'rspec'
require_relative '../player'
require_relative '../game'
require_relative '../monster'

RSpec.describe 'monster behavior' do
  it 'should let monster to have alive/dead status' do
    rat = Monster.new(1, 1, 0, 5)
    expect(rat.dead).to eq(false)
  end

end