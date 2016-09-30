defmodule Issues.CLI do
  @default_count 4
  
  @moduledoc """
  Handle the command line parsing of options and dispatch to
  the various functions.  
  """
  def run(args) do
    parse_args(args) 
  end
  
  @doc """
    'args' can be -h or --help, which returns :help.
    
    Otherwise it is a github user name, project name and optionally
    the number of entries to format.
    
    Return a tupel of '{user, project, count}', or ':help' if help was given	
  """ 
  def parse_args(args) do
    parse = OptionParser.parse(args, switched: [ help: :boolean], aliases: [ h: :help])
    case parse do
       { [ help: true ], _, _ } -> :help
       {_, [user, project, count], _} -> {user, project, String.to_integer(count)}
       {_, [user, project], _} -> {user, project, @default_count}
       _ -> :help 
    end  
  end  
end
