defmodule Spawn1 do
  def greet(time) do
    receive do
      {sender_process, msg} ->
        send sender_process, {:ok, "Hi #{msg}, good #{time}"}
    end
  end
end

# sender
process = spawn(Spawn1, :greet, ["morning"])

send process, {self, "Kamran"}

receive do
  {:ok, msg} ->
    IO.puts msg
end
