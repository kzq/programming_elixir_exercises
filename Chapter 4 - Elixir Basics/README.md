# Chapter 4 - Elixir Basics
------


### Built-in Types:

Integer, Float, Atoms, Tuples, List, Keyword list, Map, PID, Ports, Binaries

**Atoms** | They are constants. Similar to Ruby symbols. There can be only one atom with same name across all modules.

  * Atom name is its value i.e.  :atom => atom
  * Atom name always starts with :
  * Atoms are not garbage collected so never generate them dynamically
  * Atoms are labels, used to tag variables because they provide faster pattern matching  
  * Atoms are stored in Erlang Atom Table, Erlang VM supports 1,048,576 atoms 

**Ranges** | As it's name indicates it is a range between start and end. Exp 1..100

**PID** | It is a id/reference of a local or remote process. PID of current process can be get by calling self. A new PID is created when we spawn a new process.

**Tuples** | It is a collection of values written between braces. It is common for functions to return tuple. In Elixir tuple is used for 3 to 4 values more than that map collection is recommended.  
```javascrip
 {:user, "John", "registration"}
```
* Tuple represents a single piece of data that has a sementic meanings.
* Mostly used to return status code and data from a function, i.e. {:ok, data}
* Never iterate through tuple instead use Tuple.to_list
* Fetching tuple is fast but updating tupel is expensive
* Idiomatic way of getting Tuple elements are through pattern matching 
```javascript
{a, b, c} = {“elem1”, “elem2”, “elem3”}
```
**Lists** | It is a linked list. It is used when a collection has variable size and meant to grow or change. 

* It is fast to iterate, fast to update but fetching a random element is slow
* It can have repeating elements

**Keywordlist** | It is a list of two element tuples where first element is an atom .
```javascrip
DB.save record, [ {:use_transaction, true}, {:logging, "HIGH"} ]
```

* It has become default mechanism for passing options to functions in Elixir
* It is an ordered list  and allows duplicate keys
* When keyword list is last argument of a function then [] brackets are optional therefore they are used to pass optional arguments as well

**Maps** | A map is a collection of key/value pairs

* It is not an ordered list and does not allow duplicate keys in a list
* If keys are atoms, you can also use . to access them 
* A map is created using the %{} syntax:

```javascrip
map = %{:a => 1, 2 => :b}
```
