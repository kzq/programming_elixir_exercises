defmodule Values do
  def sum(0), do: 0 
  def sum(n), do: n + sum(n-1)
end

IO.puts "Values.sum(10) = #{Values.sum(10)}"

