#{
 usage: step = inputStep(min, max)

 `inputStep` is function to get step from user input for argument in fun 

 Author: Pankov Vasya <pank-su>
#}

function [step] = inputStep(min, max)
  validateattributes(min, {"numeric"}, {"scalar", "nonnegative", "<", max})
  validateattributes(max, {"numeric"}, {"scalar"})
  maxStep = max - min # max available step
  iteration = 0
  do
    if (iteration > 0)
      disp("Error! Your input is not valid! Please enter again!")
    endif
    step = inputPositive
    iteration++
  until (real(step) <= maxStep)  
endfunction
