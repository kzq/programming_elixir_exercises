# Chapter 6 -Modules and Named Functions
------

**Module** |> In Elixir we write code into named functions. These named functions must be written in a module so a module is a collection of named functions.
```javascrip
#times.exs
defmodule Times do
  def double(n) do
    n * n
  end
  #single line function
  def speak(str), do: IO.puts str
end
#compile
iex "times.exs"
#call
Times.double(5)
```

**Different functions with same names** |> Multiple functions can have same name as far as they have different arity. Therefore a function is identified together with its name and with number of arity exp. double/1, double/3

* In an anonymous function if we have different match clauses (parameter list) we can write multiple match clauses for it. Same can be done with named functions but function will be written multiple times with different match clauses. 
* Elixir will match functions with same names in the given order, if given arguments do not match with the parameter list then it tries next definition and do it until find the match or runs out of functions.
* Functions with same name must be defined adjacently in the source file.
```javascrip
 defmodule Factorial do
   def fac(0 ), do: 1
   def fac(n), do: n * fac(n-1)
 end   
```
**Recursive Functions** |> These kind of functions are very common is Elixir. First look for the case that has a definitive answer i.e. **anchor** then find the recursive solution. 

**Guard Clauses** |> As we know a function has a match clause that Elixir use to match with the given arguments. Now along with them we can have guard clause that can further filter the arguments depending on their values or given conditions. **when** keyword is used for this purpose.

**Default Parameters** |> Default parameters can be given to functions using \\ value. 

* If a function is called with less arguments then call will be failed
* If a function is called with exact number of arguments then arguments will be passed in same order
* If a function is called with exact number of required (non default ) parameters then arguments will passed to them and default values will be used for others
* If a function is called with more than required values but less that total count of parameters then parameters are matched left to right.
```javascrip
 def func(p1, p2 \\ 2, p3 \\ 3, p4) do
   IO.inspect [p1, p2, p3, p4]
 end  

 Example.func("a", "b") # => ["a",2,3,"b"]
 Example.func("a", "b", "c") # => ["a","b",3,"c"]
 Example.func("a", "b", "c", "d") # => ["a","b","c","d"]
```
**Private Functions** |> **defp** macro define a private function. It can only be called within the module. 
 
 **|> - The Amazing Pipe Operator** |> The operator takes the results of the expression on the **left** and pass it as the **first** argument of the function to its right.
```javascrip 
timesheet_approval = Timesheet.update_timesheet([timesheet_id: 123, startTime: "2016-09-11 13:00", endTime: "2016-09-11 17:00"])
|> calculate_weekly_hours
|> has_hours_exceeded
|> send_notifications
```
**Module** |> Module provides namesapces for the things you define. Nested modules can be used to improve redability and resuse. 

* **import** directive is used to import module functions defined in it.
* **alias** directive creates an alias for a module.
* **require** directive make sure complete module is loaded before your code tires to use any macros defined in it. 
* **Module attributes** starts with @. They can be access from inside the functions but only can be set outside the functions.  

