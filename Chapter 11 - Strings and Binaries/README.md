# Chapter 11 - Strings and Binaries
------

Elixir has two types of strings **String** and **Character list**. 

**String** |> A double quoted string is called a string or more formally a binary.

**Character List** |> A single quoted string is actually a list of characters and behaves like a list. String module is not available for character lists. It can only work with strings.

**Heredocs** |> We can write a multi line strings using heredoc. It is mostly used for documentation.

**Sigils** |> Style literals in Elixir are called sigils. A sigil starts with ~ tilde character followed by a character.
```javascript
# ~c = returns a character list
~c{a b c} => 'a b c'
# ~s = returns a string
~s{a b c} => "a b c"
~s{abc} => "abc"
# ~w = returns a list of whitespace-delemated words
~w{a b c} => ["a","b","c"]
```

**Binaries** |> It represents a sequence of bits. A binary literal looks like this << e,e,.. >> 
