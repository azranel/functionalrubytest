f = Functional::FinalVar.new
f.set? #=> false
f.value = "Ala ma kota"
f.value #=> "Ala ma kota"
f.set? #=> true

begin
  f.value = 3 #=> value has already been set (Functional::FinalityError)
rescue Functional::FinalityError => e
  puts "#{e} (#{e.class})"
end
