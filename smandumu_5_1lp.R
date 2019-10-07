library(lpSolveAPI) # calling library 

lprec <- read.lp("smandumu_5.lp") # assigning variable to the linear program file.

lprec

solve(lprec)

get.objective(lprec)

path <- get.variables(lprec)

path

#A12 = X1 ; A13 = X2 ; A24 = X3 ; A25 = X4 ; A35 = X5  ; A46 = X6
#A47 = X7 ; A57 = X8 ; A58 = X9 ; A69 = X10 ; A79 = X11 ; A89 = X12

nodenames <- c("X2" , "X1" , "X5"  , "X4" , "X9" , "X8" , "X3" , "X7" , "X6" , "X12" , "X11" , "X10")
Nodes <-     c("A13","A12",  "A35",  "A25", "A58", "A57"  ,"A24","A47", "A46","A89","A79","A89" )
#get.constraints(lprec)
a1 <- cbind(nodenames,path)

cbind(a1,Nodes)
