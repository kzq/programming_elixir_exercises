IO.puts "Write a mapsum function that takes a list and a function. It applies the \nfunction to each element of the list and then sums the result"

defmodule MapSum do
  def mapsum(list,func) do
    _mapsum(list,0,func)  
  end  
  def _mapsum([],value,_func), do: value
  def _mapsum([head | tail],value,func) do
    _mapsum(tail,value+func.(head),func)
  end
end
