defmodule Issues.TableFormatter do
  import Enum, only: [ each: 2, map: 2, map_join: 3, max: 1 ]
  
  @doc """
  Takes a list of rows and headers. calculates the widthe of the
  columns and print table to STDOUT  
  """ 
  def print_table_for_columns(rows, headers) do
    data_by_columns = split_into_columns(rows, headers)
    column_widths = widths_of(data_by_columns)
    format = format_for(column_widths)
    puts_one_line_in_columns(headers, format)
    IO.puts separator(column_widths)
    puts_in_columns data_by_columns, format
  end
 
  @doc """
  Given list of rows extracted values of given columns
  
  ## Example 
  
    iex> list = [Enum.into([{"a","1"},{"b","2"},{"c","3"}], Map.new),
    ...>         Enum.into([{"a","4"},{"b","5"},{"c","6"}], Map.new)]
    iex> Issues.TableFormatter.split_into_columns(list,["a","b","c"])
    [["1","4"],["2","5"],["3","6"]]	        
	
  """
  def split_into_columns(rows, headers) do
    for header <- headers do
      for row <- rows, do: printable(row[header])
    end
  end
  
  def printable(str) when is_binary(str), do: str
  def printable(str), do: to_string(str)
  
  def widths_of(columns) do
    for column <- columns, do: column |> map(&String.length/1) |> max
  end

  def format_for(column_widths) do
    map_join(column_widths, " | ", fn width -> "~-#{width}s" end) <> "~n"
  end

  def separator(column_widths) do
    map_join(column_widths, "-+-", fn width -> List.duplicate("-", width) end)
  end

  def puts_in_columns(data_by_columns, format) do
    data_by_columns
      |> List.zip
      |> map(&Tuple.to_list/1)
      |> each(&puts_one_line_in_columns(&1, format))
  end

  def puts_one_line_in_columns(fields, format) do
    :io.format(format, fields)
  end
end
