puts 'Welcome to mafia'

while (true)

  puts '1, Fight random player'
  puts '2, Choose role'
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
    when 0
      puts 'Game is closed.'
      break
    else
      puts "You gave me #{choice} -- I have no idea what to do with that. Try again"
  end

end