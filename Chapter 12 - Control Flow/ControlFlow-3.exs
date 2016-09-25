defmodule OK do
  def ok!(param) when is_tuple(param), do: {:ok, param} 
  def ok!(param) when is_tuple(param) == false, do: raise RuntimeError, "In correct param = #{param}"  
end
