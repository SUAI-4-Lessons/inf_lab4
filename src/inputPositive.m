#{
 usage: inputPositive

 `inputPositive` is function to get positive number from user input

 Author: Pankov Vasya <pank-su>
#}
function data = inputPositive()
  iteration = 0
  do
    if (iteration > 0)
      disp("Error! Your input is not valid! Please enter again!")
    endif
    iteration++
    try
      data = input("Please enter positive number: ")
    catch
      data = nan
      continue
    end_try_catch  
  until (isa(data, "numeric") & length(data) == 1 & real(data) > 0)
endfunction
