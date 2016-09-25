defmodule FizzBuzz do
  def upto(n), do: 1..n |> Enum.map(&fizzbuzz/1) 
  def fizzbuzz(e) do
    case {rem(e, 3) , rem(e, 5), e} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, n} -> e
    end
  end
end
