IO.puts "Use the &… notation to rewrite the following.\n"

prefix = fn s1 -> fn s2 -> "#{s1} #{s2}" end end

mrs = prefix.("Mrs")

IO.puts "Enum.map [1,2,3,4], fn x -> x + 2 end"

IO.puts "Enum.map [1,2,3,4], &(&1 + 2)"

list = Enum.map [1,2,3,4], &(&1 + 2)

IO.inspect(list)

IO.puts "\n\n"

IO.puts "Enum.each [1,2,3,4], fn x -> IO.inspect x end"

IO.puts "Enum.map [1,2,3,4], &(IO.inspect &1)"

IO.inspect Enum.map [1,2,3,4], &(IO.inspect &1)
