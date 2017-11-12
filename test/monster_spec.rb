require 'rspec'
require 'rspec/expectations'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/monster'

RSpec.describe 'monster behavior' do
  it 'should let monster to have alive/dead status' do
    rat = Monster.new('Rat', 'Just annoying', 1, 0, 5)
    expect(rat.dead).to eq(false)
  end
end

RSpec::Matchers.define :be_stronger_than do |expected|
  match do |actual|
    return true if actual.level > expected.level
    return true if (actual.attack + actual.defence) > (expected.attack + expected.defence)
    false
  end
end

rat = Monster.new('Rat', 'Just annoying', 1, 0, 5)
bear = Monster.new('Beat', 'Big', 10, 15, 200)

RSpec.describe bear do
  it { is_expected.to be_stronger_than(rat) }
end
