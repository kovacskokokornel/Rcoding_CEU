## Genaral info: 

we have a categorical variable, x2 and a continous one, x1. This is important for understanding the equations we estimate.

## Mod1:
- (Intercept): It is the intercept when x2 is "a", so the intercept of the red line.

- x2b: It shows how much the intercept is greater when x2 equals "b" compared to the baseline case (which is x2 = "a"). Therefore, the intercept of the green line is (Intercept) + x2b, so 1.87 + 2.89 = 4.76.

- x2c: It shows how much the intercept is greater when x2 equals "c" compared to the baseline case (which is x2 = "a"). Therefore, the intercept of the blue line is (Intercept) + x2c, so 1.87 + 4.8 = 6.67.

- x2d: It shows how much the intercept is greater when x2 equals "d" compared to the baseline case (which is x2 = "a"). Therefore, the intercept of the purple line is (Intercept) + x2d, so 1.87 + 4.8 = 6.67.

- -0.20 (coefficient of x1) is the expected difference in y corresponding to one unit difference in x1 regardless of the value of x2 (so called ceteris paribus). It is also the slope of every single line in the graph. Since it is negative, the lines are descending.

### Interpretation for ``Mod2``

- (Intercept): It is the intercept when x2 is "a", so the intercept of the red line.

- x2b: It shows how much the intercept is greater when x2 equals "b" compared to the baseline case (which is x2 = "a"). Therefore, the intercept of the green line is (Intercept) + x2b, so 1.3 + 7.07 = 11.37.

- x2c: It shows how much the intercept is greater when x2 equals "c" compared to the baseline case (which is x2 = "a"). Therefore, the intercept of the blue line is (Intercept) + x2c, so 1.3 + 4.43 = 5.73.

- x2d: It shows how much the intercept is greater when x2 equals "d" compared to the baseline case (which is x2 = "a"). Therefore, the intercept of the purple line is (Intercept) + x2d, so 1.3 + 0.83 = 2.13.

- -0.09 (coefficient of x1) is the expected difference in y corresponding to one unit difference in x1 in case x2 equals "a". It is also the slope of the red line in the graph. Since it is negative, the line is descending.

- x1:x2b: It shows how much the slope is steeper when x2 equals "b" compared to the baseline case (which is x2 = "a"). Therefore, the slope of the green line is x1 + x1:x2b, so -0.09 + -0.76 = -0.87. Since it is negative, the line is descending.

- x1:x2c: It shows how much the slope is steeper when x2 equals "c" compared to the baseline case (which is x2 = "a"). Therefore, the slope of the blue line is x1 + x1:x2c, so -0.09 + 0.07 = -0.02. Since it is negative, the line is descending.

- x1:x2d: It shows how much the slope is steeper when x2 equals "d" compared to the baseline case (which is x2 = "a"). Therefore, the slope of the purple line is x1 + x1:x2d, so -0.09 + 0.28 = 0.19. Since it is positive, the line is ascending.
