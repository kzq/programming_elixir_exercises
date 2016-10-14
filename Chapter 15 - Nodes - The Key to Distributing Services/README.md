# Chapter 15 - Nodes - The Key to Distributing Services
------

**Node** |> As we know that Elixir runs on a Erlang VM. This VM is called a node. 

* A computer can have more than one node
* Nodes can be given name
* They can be connected with other nodes across LAN or across internet
* Node name is given when starting an iex session 

```elixir
  # complete name
  iex --name node_one@machine_name
  # short name
  iex --sname node_one
  iex > Node.self
  # node name must be fully qualified and case sensitive
  iex > Node.connect :"node_two@dev.local"
  iex > Node.list
  #run process on other node
  iex > Node.spawn(:"node_two@dev.local",func)
```

**Beam** |> Elixir code is converted into a beam code. Erlang VM only understand beam code. Therefore Erlang VM is also refer as Beam.    

**Erlang VM** |> It not only runs a code instead it is a complete light weight OS running on top of operating system. It has its own events, process scheduling, memory and inter process communication.  
