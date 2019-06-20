  def iterative_fib(num)
    if (num ==0)  
      return 0
    end

     sum = 1
     prev1 = 0
     prev2 = 0
     i = 1
    while ( i < num)
    
        prev2 = prev1
        prev1 = sum
        sum = prev2 + prev1
        
        i = i + 1
      #  //   console.log(" i: " + i + " prev " + prev1 + " sum: " + sum);
    end
    return sum
  end

  def recursive_fib(num)
    if (num ==0)  
      return 0
    end
    if (num == 1) 
      return 1
    end

     prev1  =  recursive_fib(num-1) 
     prev2 = recursive_fib(num -2)
    return prev1 + prev2
            
    # //  console.log( " prev " + prev1 + " prev2: " + prev2)
   
  end

  # puts recursive_fib(3)
  # puts iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end