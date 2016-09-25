case File.open("case1.ex") do
  {:ok, file} -> 
    IO.puts "First line: #{IO.read(file, :line)}"
  {:error, reason} ->
    IO.puts "Failed to open file: #{reason}"
    IO.puts :stderr, "Could not open a file, reason is #{reason}" 
    raise "Failed to open a config file, reason is #{reason}" 
end

#File.open!("case1.ex")

