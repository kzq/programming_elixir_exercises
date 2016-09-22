defmodule MyList do
  def span(to,to), do: [to]
  def span(from,to) when to > from, do: [ from | span(from+1,to) ]
  def span(from,to) when to < from, do: raise "Wrong arguments"

  def prime_numbers(n) do
    list = span(2,n)
    for x <- list, rem(x,2) != 0, do: x
  end  

end

IO.inspect MyList.span(1,11)
