require 'yaml'

# YAML reader and writer
class Yaml
  def write_player(path, player)
    File.open(path, 'w') { |file| file.write(player.to_yaml) }
  end

  def read_player(path)
    begin
      YAML.load(File.open(path)) # use safe_load
    rescue ArgumentError => exception
      puts "Could not parse YAML: #{exception.message}"
    end
  end
end
