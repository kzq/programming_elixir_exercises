defmodule Spawn4 do
  def greet do
    receive do
      {sender, msg} ->
        send sender, {:ok, "Hi #{msg}"}
      greet
    end
  end
end

# client

greet = spawn(Spawn4, :greet, [])

send greet, {self, "Dave"}

receive do
  {:ok, msg} ->  
    IO.puts msg
end

send greet, {self, "Kamran"}

receive do
  {:ok, msg} -> 
    IO.puts msg
  after 500 -> 
    IO.puts "The greeter has gone away"
end





