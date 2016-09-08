defmodule DefaultParams do
  def func(p1,p2\\2)
  def func(p1,p2) when is_list(p1) do
    "you said #{p2} with list"
  end
  def func(p1,p2) do
    "you said 99" 
  end
end

IO.puts DefaultParams.func(99)
IO.puts DefaultParams.func(99,"cat")
IO.puts DefaultParams.func([99])
IO.puts DefaultParams.func([99],"dog")

