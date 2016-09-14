defmodule SumList do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
  def sum([],total), do: total
  def sum([head | tail], total), do: sum(tail,head+total)
end
