require 'thread'

class Hash
  def method_missing(key, *args)
    text = key.to_s
    if text[-1,1] == "="
      self[text.chop.to_sym] = args[0]
    else
      self[key]
    end
  end
end


class LearnMeta
  attr_reader :parse

  def initialize
    @parse = Class.new
  end

  def run
    method_n = 'sowju'
    add_new_method(method_n, {name: "sf", enabled: true})
    parse
  end

  def add_new_method(m_name, h1)
    parse.class_eval do 
      p = lambda do 
        h1
      end
      define_method(m_name,&p)
    end
  end
end



u = LearnMeta.new.run
puts u.new.sowju.name