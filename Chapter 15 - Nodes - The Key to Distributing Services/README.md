# Chapter 15 - Nodes - The Key to Distributing Services
------

**Node** |> As we know that Elixir runs on a Erlang VM. This VM is called a node. 

* A computer can have more than one node
* Nodes can be given name to distinguish themselves over a network
* They can be connected with other nodes across the LAN or across the internet
* Node name is given when starting an iex session 

```elixir
  # fully qualified complete name
  iex --name node_one@machine_name
  # short name
  iex --sname node_one
  iex> Node.self
  # node name must be fully qualified and case sensitive
  iex> Node.connect :"node_two@dev.local"
  iex> Node.list
  #run process on other node
  iex> Node.spawn(:"node_two@dev.local",func)
```

**Beam** |> Elixir code is converted into a beam code. Erlang VM only understand beam code. Therefore Erlang VM is also referred as Beam.    

**Erlang VM** |> It not only runs code plus it is a complete light weight OS running on top of the operating system. It has its own events, process scheduling, memory and inter process communication mechanism.  

**Node with cookie** |> A node can only be connected to other node if cookies of both nodes match. Otherwise connection will be refused.

```elixir
  iex --sname one --cookie nodecookie
  iex> Node.get_cookie 
```

**Named PID** |> PID has three fields node number, low and high bits of the process ID. Exp. #PID<8966.59.0>

* PID can be given a global name using **:global.register_name** function
* We can list the name of all PIDs in mix.ex file that our application will register to avoid conflicting names already registered globally
* General rule is to register your process PIDs names when your application starts
```elixir
  func = fn -> IO.puts "anonymous function" end
  pid = spawn(func)
  :global.register_name(:pidname, pid)
  pid = :global_whereis_name(:pidname)
  send pid, {:ok, "Got you"} 
```   

