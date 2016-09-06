IO.puts "Which of the followings will match"

IO.puts "a=[1,2,3]"
a=[1,2,3]
IO.puts "matched"

a=4
IO.puts "a=4"
IO.puts "matched"

4=a
IO.puts "4=a"
IO.puts "matched"

a=[[1,2,3]]
IO.puts "a=[[1,2,3]]"
IO.puts "matched"


[a]=[[1,2,3]]
IO.puts "[a]=[[1,2,3]]"
IO.puts "matched"

[a,b]=[1,2,3]
IO.puts "[a,b]=[1,2,3]"
IO.puts "fail"


[[a]]=[[1,2,3]]
IO.puts "[[a]]=[[1,2,3]]"
IO.puts "fail"

