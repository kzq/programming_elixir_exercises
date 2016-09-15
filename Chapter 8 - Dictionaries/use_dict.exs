defmodule Sum do
  def values(dict) do
    dict |> Dict.values |> Enum.sum 
  end
end

IO.puts "Sum as HashDict"

hd = [one: 1, two: 2, three: 3] |> Enum.into(HashDict.new)

IO.inspect hd

IO.puts "Sum.values(hd) = #{Sum.values(hd)}"

IO.puts "Sum as map"

map = %{four: 4, five: 5,six: 6}

IO.inspect map

IO.puts "Sum.values(map) = #{Sum.values(map)}"


