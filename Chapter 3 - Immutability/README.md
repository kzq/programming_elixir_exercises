Chapter 3 - Immutability
------

**All values are immutable** | It simply means that all functions in Elixir, built in or the one you will write will always return new copy/data of the data passed to it. Data or variables or values can not me changed outside the functions. We never capitalize a given string instead we will write a function that will take a string and return a new capitalized string. 

**Lots of processes** | In Elixir you write your code using lots of processes. each process has its own heap. These processes are very light weight and all data is discarded as function terminates as a result garbage collector runs faster.
