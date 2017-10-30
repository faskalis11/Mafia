# YAML reader and writer
require 'yaml'

class Yaml
  def write_player(path, player)

    data = {'experience' => player.experience}
    File.open(path, "w") {|f| f.write(player.to_yaml) }
  end

  def read_player(path)
    player = begin
      YAML.load(File.open(path))
    rescue ArgumentError => e
      puts "Could not parse YAML: #{e.message}"
    end
  end
end