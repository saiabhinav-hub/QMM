#Primal Solution
library(lpSolveAPI)
rm(lprec) # free up resources and memory
lprec<-make.lp(0,9)

lp.control(lprec,sense='max')
set.objfn(lprec,rep(c(420,360,300),3))  # Objective function with 9 decision variables
# Defining the 11 Constraints 
add.constraint(lprec,c(1,1,1),"<=",750,indices = c(1,2,3)) 
add.constraint(lprec,c(1,1,1),"<=",900,indices = c(4,5,6))
add.constraint(lprec,c(1,1,1),"<=",450,indices = c(7,8,9))
add.constraint(lprec,c(20,15,12),"<=",13000,indices = c(1,2,3))
add.constraint(lprec,c(20,15,12),"<=",12000,indices = c(4,5,6))
add.constraint(lprec,c(20,15,12),"<=",5000,indices = c(7,8,9))
add.constraint(lprec,c(1,1,1),"<=",900,indices = c(1,4,7))
add.constraint(lprec,c(1,1,1),"<=",1200,indices = c(2,5,8))
add.constraint(lprec,c(1,1,1),"<=",750,indices = c(3,6,9))
add.constraint(lprec,c(rep(c(900,-750),each=3)),"=",0,indices = c(1:6))
add.constraint(lprec,c(rep(c(450,-750),each=3)),"=",0,indices = c(1,2,3,7,8,9))
solve(lprec)
get.objective(lprec)
get.constraints(lprec)
get.variables(lprec)
get.sensitivity.obj(lprec) # Reduced Cost
get.sensitivity.rhs(lprec) # Shadow prices
a1<-data.frame(get.sensitivity.rhs(lprec)$duals[1:11],get.sensitivity.rhs(lprec)$dualsfrom[1:11],get.sensitivity.rhs(lprec)$dualstill[1:11])
names(a1)<-c("price","lower","upper")
a2<-data.frame(get.sensitivity.rhs(lprec)$duals[12:20],get.sensitivity.rhs(lprec)$dualsfrom[12:20],get.sensitivity.rhs(lprec)$dualstill[12:20])
names(a2)<-c("cost","lower","upper")
a1
a2


