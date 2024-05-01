require "yaml"

class RedFairy
  def initialize(book)
    @book = book
    begin
      @@config_hash = YAML.load(File.read("#{Dir.home}/.config/shikigami/config.yml"))
    rescue
      @@config_hash = {}
    end
  end #def

  def self.exists?(key)
    return @@config_hash.has_key?(key)
  end #def

  def get(key)
    return @@config_hash[key]
  end #def
end #class
