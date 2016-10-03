defmodule Issues.CLI do
  @default_count 4
  
  @moduledoc """
  Handle the command line parsing of options and dispatch to
  the various functions.  
  """
  def run(args) do
    args
    |> parse_args
    |> process  
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

  @doc """
    Handles two variants, receives a three element tuple or :help atom
    returns help text or fetch Github issues
  """
  def process(:help) do
    IO.puts """
    usage: issues <user> <project> [count | #{@default_count}]      
    """ 
  end
  def process({user, project, _count}) do
    Issues.GithubIssues.fetch(user,project)
    |>decode_response  
  end  
  def decode_response({:ok, body}), do: body
  def decode_response({:error, error}) do
    IO.puts "Error fetching from Github: #{error["message"]}"
    System.halt(2)
  end
  def sort_into_ascending_order(list_of_issues) do
    Enum.sort(list_of_issues, fn i1,i2 -> i1["created_at"] <= i2["created_at"] end)
  end 
end
