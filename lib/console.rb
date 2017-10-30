require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/citizen'
require_relative '../lib/monster'
require_relative '../lib/mafia'
require_relative '../lib/yaml'

puts 'Welcome to mafia'

player = Player.new
player.role = Citizen.new

while (true)
  puts '1. Fight random player'
  puts '2. Choose role'
  puts '3. Buy guns'
  puts '4. Kill other user'
  puts '5. Check my status'
  puts '8. Save player'
  puts '9. Load player'
  puts '0. End game'
  puts 'Please choose'
  choice = gets.chomp
  case choice.to_i
    when 1
      puts 'Selected 1'
    when 2
      puts 'Selected 2'
      roles = [Citizen.new, Mafia.new]
      roles.each.with_index {|role, index| puts "#{index}. #{role.class.name}"}
      puts 'Choose role'
      role_choice = gets.chomp
      player.role = roles[role_choice.to_i] if ((0..1).include?(role_choice.to_i))

    when 3
      puts 'Selected 3'
    when 4
      puts 'Selected 4'
    when 5
      puts 'Selected 5'
      puts "#{player.role.class.to_s}, #{player.experience} exp, #{player.role}"
    when 6
      puts 'Selected 6'
    when 7
      puts 'Selected 7'
    when 8
      puts 'Selected 8'
      yaml = Yaml.new
      yaml.write_player('temp/output.yml', player)
    when 9
      puts 'Selected 9'
      yaml = Yaml.new
      player = yaml.read_player('temp/input.yml')
    when 0
      puts 'Game is closed.'
      break
    else
      puts "You gave me #{choice} -- I have no idea what to do with that. Try again"
  end

end