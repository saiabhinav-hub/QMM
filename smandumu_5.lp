/*Objective function*/
Max : 3 X2 + 5 X1 + 3 X5 + 2 X4 + 2 X9 + 6 X8 + 4 X3 + 4 X7 + 1 X6 + 7 X12 + 4 X11 + 5 X10 ;

/*Constraints*/
/*Origin Node:*/
   X2 +  X1 = 1;
/*Destination Node:*/
      X12 +  X11 +  X10 = 1;
/*Intermediate Nodes:*/
     X1 -  X4 -  X3 = 0;
     X2 -  X5 = 0;
     X3 -  X6 -  X7 = 0;
     X5 +  X4 -  X9 -  X8 = 0;
     X6 -  X10 = 0;
     X8 +  X7 -  X11 = 0;
     X9 -  X12 = 0;
    
bin X2 , X1 , X5  , X4 , X9 , X8 , X3 , X7 , X6 , X12 , X11 , X10 ; 