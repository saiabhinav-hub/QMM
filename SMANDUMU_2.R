library(lpSolveAPI)
rm(a) # free up resources and memory
a <- make.lp(0,3,verbose = "neutral")
a
lp.control(a,sense='max')
add.constraint(a, c(1,1,1), "<=", 750 )
add.constraint(a, c(1,1,1), "<=", 900)
add.constraint(a, c(1,1,1), "<=", 450)
add.constraint(a, c(20,15,12), "<=", 13000)
add.constraint(a, c(20,15,12), "<=", 12000)
add.constraint(a, c(20,15,12), "<=", 5000)
add.constraint(a, c(1,1,1), "<=", 900)
add.constraint(a, c(1,1,1), "<=", 1200)
add.constraint(a, c(1,1,1), "<=", 750)


a.col <- c("Plant 1","Plant 2","Plant 3") # Assigning 3 columns
a.row <- c("Capacity LP1","Capacity LP2","Capacity LP3","Space LP1",
           "Space LP2","Space LP3","Forecast LP1","Forecast LP2","Forecast LP3") # Assigning 9 Rows
dimnames(a) <- list(a.row,a.col) 

a

solve(a)
get.objective(a)
get.variables(a)
get.constraints(a)

