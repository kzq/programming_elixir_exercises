# Chapter 13 - Organizing a Project
------
**Mix** |> It is a Elixir project manager similar to ruby bundler. It is a command line utility.
```elixir
# new project
mix new project_name
# install dependencies
# cd to project_name
mix deps.get
# run tests
mix test
# run project
iex -S mix 
# recompile and run
mix run -e "MainModule.main_function" 
```
 
 **lib/** By convention main module and all application code is stored here.
 
 * create a sub directory with the main module name for example create a directory with name issues in lib/ 
 * create issues.ex file in lib/ 
 * All sub modules with in issues will be stored in issues directory
 * Same is true for other nested modules    

**ex Vs exs** |> Files with extension .ex are compiled files and files with .exs are directly converted into interpreted files. Interpreted files take longer to convert but they run faster.

* We create test files with .exs and source code files with .ex extensions

**ExUnit**|> An Elixir built in testing framework
```elixir
defmodule IssuesTest do
  use ExUnit.Case
 
  test "test me" do
    assert 1==1 
  end 
end
```

**Hex** |> Hex is a elixir package manager. Elixir packages, applications, libraries are available on http://hex.pm 

**mix.exs** |> It is elixir project's configuration file. It resides in the project folder. **mix.exs** has different functions that return a keyword list. Each keyword specified different settings.

```elixir
  # mix.exs
  
  #project settings
  def project do
    [
      app: :issues,
      name: "Issues",
      version: "0.0.1",
      deps: deps 
    ]
  
  #OTP framework settings
  def application do
    [
      application: [:logger, :htrtpoison]
    ]
  end 

  #dependencies  
  defp deps do
   {:poison, "~>0.4" }
  end
```

  

  

