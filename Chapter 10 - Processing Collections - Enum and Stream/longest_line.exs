IO.puts File.read!("pipeline.exs")
|> String.split
|> Enum.max_by(&String.length/1)
