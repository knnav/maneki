require 'yaml'

class Dialogs
  def self.dialogs
    @@dialogs ||= YAML.load(dialogs_file)
  end

  def self.dialogs_file
    @@dialogs_file ||= File.read(dialogs_file_path)
  end

  def self.dialogs_file_path
    @@dialogs_file_path ||= 'config/dialogs.yml'
  end
end