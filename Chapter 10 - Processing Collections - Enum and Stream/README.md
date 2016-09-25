# Chapter 10 - Processing Collections - Enum and Stream
------

All **Collections** like tuple, list, keywordlist, map, HashDict, binaries, they share one thing that we can iterate through them. And for that purpose most of the time we will be using **Enum** and **Stream** modules.

**Enum** |> This is mostly used module in the Elixir world.

* Enum module can be used to iterate, filter, combine, split and to manipulate the collections
```Javascript
Enum.to_list 1..20
Enum.into [1,2,3], %{}
Enum.concat([1,2,3],[4,5,6])
Enum.map([1,2,3], &(&1 * &1))
Enum.filter([1,2,5,8], &(&1 > 4))
Enum.reduce([1,2,3], 0, &(&1 + &2))	 
```  

**Streams** |> Stream module lets you iterate through a collection lazily. It means calculations will be only performed when a function is called.
To get **results** from a stream, pass it as a parameter to the Enum function.

* Because we can pass a stream to a stream function therefore streams are  composable
* We use streams when we need to deal a large numbers of things/data without necessarily generating them all at once.  

```Javascript
s = Stream.map([1,2,3], &(&1 * 10))
Enum.to_list s

[1,2,3,4]
|> Stream.map(&(&1*&1))
|> Stream.map(&(&1+1))
|> Stream.filter(fn x -> rem(x,2) == 1 end)
|> Enum.to_list
```
**Comprehensions** |> It is an Elixir macro that lets you map and filter the collections at same time. Therefore it is a shortcout to these both functions. 
```javascript
for collection(s), filter(s), do: generate_new_collection
for x <- [1,2,3,4,5], x > 2 , do: x  
```
* Any variable created in comprehension is available in rest of the compresion
* Compresion returns a list but it can be forced to return some other collection using Enum.into
```javascript
 for x <- ~w{ cat dog }, into: %{"ant" => "ANT"}, do: { x, String.upcase(x) }
%{"ant" => "ANT", "cat" => "CAT", "dog" => "DOG"}
```     
 
