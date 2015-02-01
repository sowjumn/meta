class LearnMeta
  attr_reader :parse

  def initialize
    @parse = Class.new
  end

  def run
    method_n = 'sowju'
    add_new_method(method_n)
    parse
  end

  def add_new_method(m_name)
    parse.class_eval do 
      p = Proc.new do 
        puts "happy"
      end
      define_method(m_name,&p)
    end
  end
end

u = LearnMeta.new.run
u.new.sowju