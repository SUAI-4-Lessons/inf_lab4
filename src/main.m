enteredFormula = input("Enter math formula\n","s")

formula = eval(["@(x) " enteredFormula], 'error("Entered formula is invalid")')

[minX maxX] = inputIsHalfOrLess

x = minX:0.01:maxX

y = arrayfun(formula, x)

printtable(x, y)

