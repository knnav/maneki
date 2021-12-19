require 'yaml'

class Config
  def self.settings
    @@settings ||= YAML.load(settings_file)
  end

  def self.settings_file
    @@settings_file ||= File.read(settings_file_path)
  end

  def self.settings_file_path
    @@settings_file_path ||= 'config/settings.yml'
  end
end