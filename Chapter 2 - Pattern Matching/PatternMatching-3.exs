IO.puts "If you assume the variable a initially contains the value 2 , which of the
following will match?"

IO.puts "Initial Value, a = 2"


IO.puts "[ a, b, a ] = [ 1, 2, 3 ]"
IO.puts "Fail"

IO.puts "[ a, b, a ] = [ 1, 1, 2 ]"
IO.puts "Fail"

IO.puts "a = 1"
IO.puts "matched"

IO.puts "^a = 2"
IO.puts "Fail"

IO.puts "^a = 1"
IO.puts "Match"

IO.puts "^a = 2 - a"
IO.puts "Match"

try do

a=1


^a = 1

^a = 2 - a

[ a, b, a ] = [ 1, 2, 3 ]

[ a, b, a ] = [ 1, 1, 2 ]

^a = 2

rescue
 e in RuntimeError -> e
end

