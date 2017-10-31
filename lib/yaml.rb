require 'yaml'

# YAML reader and writer
class Yaml
  def write_player(path, player)
    data = {'experience' => player.experience}
    File.open(path, "w") {|file| file.write(player.to_yaml) }
  end

  def read_player(path)
    player = begin
      YAML.load(File.open(path))
    rescue ArgumentError => exception
      puts "Could not parse YAML: #{exception.message}"
    end
    puts player
    player
  end
end