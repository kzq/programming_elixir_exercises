defmodule MyString do
  def center(list) do
    max_l = max_by_length(list)  
    list
    |> Enum.map(&(String.duplicate(" ",div(max_l-(String.length(&1)),2)) <> &1)) 
    |> Enum.each(&IO.puts/1)
  end
  def max_by_length(list) do
    Enum.max_by(list, &(String.length(&1)))   
    |>String.length	
  end
end
