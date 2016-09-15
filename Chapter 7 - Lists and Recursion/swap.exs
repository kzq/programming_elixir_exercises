defmodule MyList do
  def swap([]), do: []
  def swap([a,b | tail]), do: [b,a | swap(tail) ]
  def swap([_]), do: raise "Can't swap a list with odd number of elements"
end
