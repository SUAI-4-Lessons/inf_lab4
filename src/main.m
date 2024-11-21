enteredFormula = input("Enter math formula\n","s")

formula = eval(["@(x) " enteredFormula], 'error("Entered formula is invalid")')

disp("Enter limitations")
[minX maxX] = inputIsHalfOrLess

disp("Enter step")
step = inputStep(minX, maxX)

x = minX:step:maxX

y = arrayfun(formula, x)

printtable(x, y)

plot(x, y)
