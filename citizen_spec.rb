require 'rspec'

describe 'Citizen behaviour' do

  it 'can be alive. Could be shot. Later could be dead' do
    citizen = Citizen.new
    expect(citizen.dead).to be false
    citizen.gotShot()
    expect(citizen.dead).to be true

  end
end