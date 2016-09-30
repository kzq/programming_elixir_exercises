defmodule CliTest do
  use ExUnit.Case
  
  import Issues.CLI
  
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
end
