class LearnMeta
  def self.run
    parse = Class.new
    parse.class_eval("def sowju; puts 'happy'; end")
    parse
  end
end

u = LearnMeta.run
u.new.sowju