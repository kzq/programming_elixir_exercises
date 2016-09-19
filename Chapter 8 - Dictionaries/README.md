# Chapter 8 - Dictionaries: Maps, HashDicts, Keywords, Sets, and Structs
------
**Dictionary** |> Dictionary is a **data type** that associate keys with values. **Maps**, **Keyword** list and **HashDict** are examples of dictionaries.
 
* We mostly use dictionary module to use its functionality so that we can change one type of dictionary to another for example map to hashdict.
```javascript
#key word list to hashdict 
[one: 1, two: 2, three: 3] |> Enum.into(HastDict.new) |> Dict.values |> Enum.sum
```

**How to Choose Between Maps, HashDicts, and Keywords** 

* For duplicate keys use keyword list
* For ordered list use keyword
* Frequently accessing an element of list? Use maps
* Use HasDict instead of map if list have more than few hundred items
 
 **Updating a map** |> We can update key/value entries into the map using a pipe **|** sign 
```javascript
map = %{one: 1, two: 2, three: 3}
# add new keys
new_map = Dict.put(map,four,4)
# update values
new_map = %{map | two: 22}  
```

**Struct** |> Struct are user defined maps. Sometimes we like to have a map with fixed keys and default values with pattern matching capabilities.

* It must be defined inside a module
* Keys must be atoms
* it cannot use Dict and Access module functionality
* **defstruct** macro is used to define struct
* They play a large role when implementing polymorphism

```javascript
struct = %Subscriber{name: "Dave", over_18: true}
struct.name
```
