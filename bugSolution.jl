```julia
function myfunction(x::Int64)::Int64 # Explicit type declaration for input and output
  if x > 0
    return x^2
  else
    return -x
  end
end

println(myfunction(5))
println(myfunction(-3))
```