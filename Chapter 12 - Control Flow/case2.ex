defmodule Bouncer do
  dave = %{name: "Dave", age: 27}
  case dave do
    %{age: age} = person when is_number(age) and age > 21 ->
      IO.puts "Youa are not under age #{person.name}"
    _ ->
      Io.puts "Sorry, you are under age"      
  end
end
