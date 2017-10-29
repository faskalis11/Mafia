require 'rspec'
require_relative '../player'
require_relative '../game'
require_relative '../citizen'

RSpec.describe 'monster behavior' do
  it 'should let monster to have dead status' do
    rat = Monster.New(1, 1, 0, 5)
    rat.expect(rat.dead).to eq(false)
  end

end