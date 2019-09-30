
/*Assigning variables to the  */

/* Plant  A Warehouse  1 = X1 */
/* Plant  A Warehouse  2 = X2 */
/* Plant  A Warehouse  3 = X3 */
/* Plant  B Warehouse  1 = X4 */
/* Plant  B Warehouse  2 = X5 */
/* Plant  B Warehouse  3 = X6 */

/* As demand and supply are not equal, to solve in transportation method we are adding 2 dummy variables */

min: 622 X1 + 614 X2 + 630 X3 + 641 X4 + 645 X5 + 649 X6 + 0 X7 + 0 X8;
/* Demand Constraints */
X1 + X4 = 80;
X2 + X5 = 60;
X3 + X6 = 70;
X7 + X8 = 10;
/* /supply Constraints */
X1 + X2 + X3 + X7 = 100;
X4 + X5 + X6 + X8 = 120;

