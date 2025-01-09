# Type Instability Bug in Julia

This repository demonstrates a common type instability bug in Julia that can lead to unexpected results and performance issues. The bug occurs in the `myfunction` function, which handles both positive and negative integers. However, due to the way Julia handles type inference and dispatch, the function behaves unexpectedly when given a negative input. 

## Bug Description
The `myfunction` function is designed to return the square of a positive input and the negative of a negative input.  However, the current implementation exhibits type instability, leading to incorrect results and performance penalties for negative inputs.  The solution involves specifying the return type explicitly to ensure type stability.

## How to Reproduce
1. Clone this repository.
2. Run `bug.jl` using Julia. Observe the incorrect output for the negative input.
3. Run `bugSolution.jl` to see the corrected implementation.

## Solution
The solution lies in explicitly specifying the return type of the function, ensuring that Julia does not need to perform runtime type conversions. This makes the code faster and more predictable.