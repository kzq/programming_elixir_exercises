# Chapter 13 - Organizing a Project
------
**Mix** |> It is Elixir's project manager, similar to ruby bundler. It is a command line utility.
```elixir
# new project
mix new project_name
# install dependencies
# cd to project_name
mix deps.get
# list external dependencies
mix deps
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
 * Same is directory structure true will be applied to other nested modules    

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

**Hex** |> Hex is Elixir's package manager. Elixir packages, applications, libraries are available ot http://hex.pm 

**mix.exs** |> It is elixir project's configuration file. It resides in the project folder. **mix.exs** has different functions that return a keyword list. Each keyword sets different settings. **mix.lock** file locks the dependencies versions like Gemfile.lock  

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
  
#OTP framework settings, everything here runs as a     
#seperate process outside the projects main #process.Managed by OTP
  def application do
    [
      application: [:logger, :httpoison]
    ]
  end 

  #dependencies  
  defp deps do
   [
     {:poison, "~>0.4" }
   ]
  end
```

**import_config** |> This function can be used to load dynamic configuration file. Along with **Mix.env**, it can be used to load  different configurations based on the application's environment. 

```elixir
  use Mix.Config
  import "#{Mix.env}.exe"
```
  
  **escript** |> It is Erlang's tool that **mix** uses to create a single file of code that can be run on any Unix-based platform. This single file has all dependencies.

* When **escript** runs a program, it looks in your **mix.exs** file for the option escript. This should return a **keyword list** of escript configuration settings. The most important of these is **main_module** which must be set to the name of a module containing a main function.    

**Logger** |>

```elixir
#config/config.exs
config :logger, compile_time_purge_level: :info

#in code
Logger.debug "Debug information"
Logger.info "Printing document xyz"
```  

**Testing Comments** |> In Elixir we can test the comments as well. **@doc** is sued to document a function. **## Examples** marks are used to provide tests with in comments.

**Documentation** |> Like ruby's rdoc, Elixir has **ExDoc** - a documentation tool. Simply add **:ex_doc** dependency and run **mix docs** 
