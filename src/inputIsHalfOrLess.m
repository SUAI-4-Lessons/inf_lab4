#{
 usage: [a, b] = inputIsHalfOrLess

 `inputIsHalfOrLess` is function to get two positive number, which first number
  is half or less of second number

 Author: Pankov Vasya <pank-su>
#}
function [a, b] = inputIsHalfOrLess()
  iteration = 0
  disp("Please enter two numbers where the first number is at least twice as small")
  do
    if (iteration > 0)
      disp("Error! Your input is not valid! Please enter again!")
    endif
    [a b] = {inputPositive inputPositive}{:}
    iteration++
  until (2 * a <= b)
endfunction
