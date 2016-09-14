# A `Record` is very similar to a Ruby `Struct` and shares many of its behaviors
# and attributes. Unlike a # Ruby `Struct`, a `Record` is immutable: its values
# are set at construction and can never be changed. Divergence between the two
# classes derive from this core difference.

Name = Functional::Record.new(:first, :middle, :last, :suffix) do
  mandatory :first, :last
  default :first, 'J.'
  default :last, 'Doe'
end

anon = Name.new
puts anon

matz = Name.new(first: 'Yukihiro', last: 'Matsumoto')
puts matz
