defmodule CliTest do
  use ExUnit.Case
  
  import Issues.CLI, only: [parse_args: 1, sort_into_ascending_order: 1]
  
  test ":help is returned by option parsing when -h or --help options given" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end  
  test "three values returned if three given" do
    assert parse_args(["user","project","99"]) == {"user", "project", 99} 
  end
  test "count is defaulted if two values given"  do
    assert parse_args(["user", "project"]) == {"user", "project", 4} 
  end 
  test "sort ascending orders the correct way" do
    #IO.inspect fake_created_at_list(["c","a","b"])
    result = sort_into_ascending_order(fake_created_at_list(["c","a","b"]))
    #IO.inspect result   
    issues = for issue <- result, do: issue["created_at"]
    #IO.inspect issues    
    assert issues == ~w{a b c}  
  end
  defp fake_created_at_list(values) do
    for value <- values, do: %{"created_at"=> value, "other_data"=> "xxx"}
  end
end
