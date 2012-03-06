class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s    # make sure it's a string
    list = attr_name+"_history"
    attr_reader attr_name    # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q|
    def initialize
      @#{list} = [@#{attr_name}]
    end
    
    def #{attr_name}= (value)
      @#{attr_name} = value
      @#{list} << value
    end
    |
  end
end

class Foo
  attr_accessor_with_history :bar
end