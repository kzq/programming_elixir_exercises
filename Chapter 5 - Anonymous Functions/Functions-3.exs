fizz_buzz = fn 
  (0,0,_) -> IO.puts "FizzBuzz" 
  (0,_,_) -> IO.puts "Fizz"
  (_,0,_) -> IO.puts "Buzz"
  (_,_,n) -> IO.puts n
end  

fizz_buzz_solution = fn (n) ->
  fizz_buzz.(rem(n,3),rem(n,5),n)
end

fizz_buzz_solution.(10)
fizz_buzz_solution.(11)
fizz_buzz_solution.(12)
fizz_buzz_solution.(13)
fizz_buzz_solution.(14)
fizz_buzz_solution.(15)
fizz_buzz_solution.(16)
