# Chapter 5 - Anonymous Functions
------


**Elixir is a functional language so functions are basics.**

Anonymous functions do not have name but they are first class functions. They have function clause and function body. Function clause provide parameter list that is then matched through pattern inside the function body.

```javascrip
sum = fn (a,b) -> a + b end
sum.(1+2)

fun = fn ({:ok, file}) -> "Read data #{IO.read(file, :line)}"
```
Last value is returned by functions automatically. Functions can be passed as arguments and in Elixir this ability of function passing is used very commonly.  

**& = shortcut of fn** | Short anonymous functions can be written with & notations.  &1,&2.. are parameters. 
```javascrip
add_one = &(&1+1)
```
**Arity** | Arity is the number of parameters of an existing function.
