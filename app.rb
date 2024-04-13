class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

@@x= nil

def self.instance #создание экземпляра класса
   if @@x == nil
    @@x = Logger.new
  end

  return @@x
end

#class method
  def self.say_something
    puts 'haha'
  end

#instance method
  def log_smth what
    @f.puts what
  end
end

Logger.say_something
Logger.instance.log_smth 'blabla' 
Logger.instance.log_smth 'blabla22' 

logger = Logger.new
logger.log_smth 'HEYYY'

