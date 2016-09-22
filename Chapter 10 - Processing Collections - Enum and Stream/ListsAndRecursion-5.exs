defmodule EnumAndStream do
  def all?([] , _fun), do: true 
  def all?([head | tail], fun), do: fun.(head) && all?(tail, fun)

  def each([],_fun), do: []  
  def each([head | tail], fun), do: [fun.(head) | each(tail,fun)]

  def filter([],_fun), do: []
  def filter([head | tail], fun) do
    if fun.(head) do
      [head | filter(tail,fun)]
    else
     filter(tail,fun)
    end
  end 	
  
  def split(list, count),      do: _split(list, [], count)
  defp _split([], front, _),   do: [ Enum.reverse(front), [] ]
  defp _split(tail, front, 0), do: [ Enum.reverse(front), tail ]
  defp _split([ head | tail ], front, count)  do
    _split(tail, [head|front], count-1)
  end

  def take(list, n), do: hd(split(list, n))
   

end
