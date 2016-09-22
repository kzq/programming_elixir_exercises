defmodule CharPrinter do
  def ascii_char_list do
    Enum.into ?\s..?~, []  
  end
  def is_ascii(char_list), do: char_list |> Enum.all?(&(&1 in ascii_char_list)) 
end

IO.inspect CharPrinter.is_ascii('cat')

IO.inspect CharPrinter.is_ascii('∂x/∂y')
