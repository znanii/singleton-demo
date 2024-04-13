class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

@@x= Logger.new

def self.instance #создание экземпляра класса
    @@x 
end

#instance method
  def log_smth what
    @f.puts what
  end

  private_class_method :new
end
