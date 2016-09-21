[1,2,3,4]
|> Stream.map(&(&1*&1))
|> Stream.map(&(&1+1))
|> Stream.filter(fn n -> rem(n,2) == 1 end)
|> Enum.to_list
|>IO.inspect
