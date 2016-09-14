Io.puts "Write a mapsum function that takes a list and a function. It applies the \n
function to each element of the list and then sums the result"

defmodule MapSum do
  def mapsum(list,func) do
    mapsum(list,0,func)  
  end  
  def mapsum([],value,_func), do: value
  def mapsum([head | tail],value,func) do
    mapsum(tail,value+func.(head),func),func)
  end
end
