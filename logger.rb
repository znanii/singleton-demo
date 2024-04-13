require 'singleton'

class Logger
  include Singleton

  def initialize
    @f = File.open 'log.txt', 'a'
  end

#instance method
  def log_smth what
    @f.puts what
    @f.flush #changes will be sent to disk
  end

end
