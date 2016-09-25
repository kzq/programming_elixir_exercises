defmodule FizzBuzz do
  def upto(n) when n > 0, do: _upto(1,n,[])
  def _upto(_current,0,result), do: Enum.reverse result
  def _upto(current,n,result) do
    next = cond do
             rem(current, 3) == 0 and rem(current, 5) == 0 -> "FizzBuzz"
             rem(current, 3) == 0 -> "Fizz"
             rem(current, 5) == 0 -> "Buzz"
             true -> current
           end
    _upto(current+1, n-1, [next | result])   
  end
end
