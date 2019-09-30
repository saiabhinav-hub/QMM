library(lpSolveAPI) # calling library 

lprec <- read.lp("smandumu_4.lp") # assigning variable to the linear program file.

solve(lprec)

get.objective(lprec)

get.variables(lprec)

get.constraints(lprec)

