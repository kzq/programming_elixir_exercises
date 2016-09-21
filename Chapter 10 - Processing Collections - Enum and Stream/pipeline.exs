list = [1,2,3,4,5]

list 
|> IO.inspect
|> Enum.map(&(&1*&1))
|> IO.inspect
|> Enum.with_index
|> IO.inspect
|> Enum.map(fn {value , index} -> {index, value } end)
|> IO.inspect
