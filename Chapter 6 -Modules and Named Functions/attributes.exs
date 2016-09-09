defmodule Example do
  @author "Jamie"
  def get_author, do: @author
  @author "Dave"
  def set_author do
    #cannot set module attributes inside a function
    #@author "Dave" 
    @author
  end
end

IO.puts "#{Example.get_author} and #{Example.set_author}"
