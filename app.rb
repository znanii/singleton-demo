class Logger
  def self.say_something
    puts 'haha'
  end

  def self.log_smth what
    f = File.open 'log.txt', 'a'
    f.puts what
    f.close
  end
end

Logger.say_something
Logger.log_smth 'wazzup'