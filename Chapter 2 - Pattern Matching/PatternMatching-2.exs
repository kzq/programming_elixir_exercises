IO.puts "Which of the following will match?"

[a,b,a] = [1,2,1]
IO.puts "[a,b,a] = [1,2,1]"
IO.puts "Matched"

[a,b,a] = [1,1,2]
IO.puts "[a,b,a] = [1,1,2]"
IO.puts "Fail"

[a,b,a] = [1,2,3]
IO.puts "[a,b,a] = [1,2,3]"
IO.puts "Fail"

