defmodule MyList do
  def span(to,to), do: [to]
  def span(from,to) when to > from, do: [ from | span(from+1,to) ]
  def span(from,to) when to < from, do: raise "Wrong arguments"
end

IO.inspect MyList.span(1,11)
