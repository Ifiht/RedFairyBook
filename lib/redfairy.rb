require "yaml"

class RedFairy
  def initialize(book)
    @book = book
    @config_hash = {}
    @path = File.join(Dir.home, '.config', @book, 'config.yml')
    puts "begin checking dirs"
    if not Dir.exist?("#{Dir.home}/.config")
      Dir.mkdir("#{Dir.home}/.config")
      puts "created #{Dir.home}/.config"
    end #if
    if not Dir.exist?("#{Dir.home}/.config/#{@book}")
      Dir.mkdir("#{Dir.home}/.config/#{@book}")
      puts "created #{Dir.home}/.config/#{@book}"
    end #if
    if not File.exist?(@path)
      #File.open(@path, "w") { |f| f.write(YAML.dump(@config_hash)) }
      File.open(@path, "w") { |f| f.write(YAML.dump(@config_hash)) }
    end #if
    begin
      @config_hash = YAML.load(File.read(@path))
    rescue => e
      puts e
    end #begin
  end #def

  def self.has?(key)
    return @config_hash.has_key?(key)
  end #def

  def self.get(key)
    if self.has?(key)
      return @config_hash[key]
    else
      return nil
    end
  end #def

  def self.set(key, value)
    @config_hash[key] = value
    return @config_hash[key]
  end #def

  def self.save
    File.open(@path, 'w') { |f| f.write(YAML.dump(@config_hash)) }
    return @config_hash
  end #def
end #class
