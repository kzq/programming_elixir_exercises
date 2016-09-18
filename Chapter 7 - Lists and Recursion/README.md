# Chapter 7 - Lists and Recursion
------
List can be empty [] or consists of head and tail. **Head** is the first element of the list and remaining list is called the **Tail**. Tail is also a list and both head and tail are separated with pipe **|** sign.   

* List can be used in pattern matching
```javascrip
[head | tail ] = [1,2,3,4]
head = 1
tail = [2,3,4]
```

* Length of an empty list is 0
* In a recursive function if we have to remember a value of a variable between function calls then we can pass it as a function parameter because we can not hold them in a global variable as in Elixir values can be changed or assigned outside the function .
