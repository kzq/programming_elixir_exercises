# Chapter 12 - Control Flow
------

* Combination of guard clauses, pattern matching and the fact that in elixir we write very short functions, replaces needs of control flow. 
*  Elixir provides if, unless, cond and case control flows.

**if and unless** |> if and unless are two functions that takes a condition and a keyword list as parameters. Keyword list includes do: and else: keys.
```javascript
if 1 == 1, do: "true", else: "false"
unless 1 == 2, do: "true", else: "false"
``` 

**cond** |> Using cond we can list a series of conditions along with their codes. It executes the code of first truthy condition. It can be passed as a parameter.

* True is used to handle the situation when none of the above conditions are met.
```javascript
time = 13
answer = cond do
           time == 11 -> "Good morning"
           time == 13 -> "Good afternoon"
           true -> "Time is #{time}"    
         end  
``` 

**case** |> In **cond** we provide a series of conditions but in **case** we provide a series of patterns. These patterns can have guard clauses.
```javascript
open = File.open("README.md")
result = case open do
           {:ok, file} -> "File is opened successfully, #{IO.read(file,:line)}"
           {:error, reason} -> "Failed to open file reason = #{reason}"
         end  
``` 

**Raising Exceptions** |> Raise an exception with a raise function.
```javascript
raise "Raising an exception"
raise RuntimeError, "Error message"
``` 

* We use exceptions far less in Elixir than in other languages—the design philosophy is that errors should propagate back up to an external, supervising process.
* By convention in Elixir a function name with trailing exclamation (!) sign will raise a meaningful  exception.
