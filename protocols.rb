Functional::SpecifyProtocol(:SomeProtocol) do
  attr_reader :first_method
  attr_reader :second_method
end

class ClassWithProtocol
  def first_method
    "First"
  end

  def second_method
    "Second"
  end
end

class ClassWithoutProtocol
  # NO PROTOCOLS :-(
end

puts Functional::Protocol.Satisfy?(ClassWithProtocol, :SomeProtocol) # true
puts Functional::Protocol.Satisfy?(ClassWithoutProtocol, :SomeProtocol) # false
