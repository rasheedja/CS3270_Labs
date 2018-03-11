## TASK 1: UNDERSTANDING THE TRIANGLES PROBLEM

A triangle with sides which are 3, 4 and 5 units in length
Scalene

A triangle with sides which are 7, 7 and 13 units in length
Isosceles
	
A triangle with sides which are 10, 15 and 5 units in length
Not a triangle, 10 + 5 is not > 15

A triangle with sides which are 100, 100 and 100 units in length
Equilateral

A triangle with sides which are 2, 3 and 5 units in length
Not a triangle, 2 + 3 is not > 5

A triangle with sides which are 4, 3 and 5 units in length
Scalene

A triangle with sides which are 3, 5 and 3 units in length
Isocseles

## TASK 2: BVA AND THE TRIANGLES PROBLEM

### Simple BVA 

| Side A | Side B | Side C | Expected Result |
|--------|--------|--------|-----------------|
|    1   |    1   |    1   |  Equilateral    |
|    2   |    2   |    2   |  Equilateral    |
|    50  |   50   |  50    |  Equilateral    |
|    199 |   199  |  199   |  Equilateral    |
|    200 |   200  |  200   |  Equilateral    | 

### Worst Case BVA

| Side A | Side B | Side C | Expected Result |
|--------|--------|--------|-----------------|
|    0   |    0   |    0   |  Not a triangle |
|    1   |    1   |    1   |  Equilateral    |
|    2   |    2   |    2   |  Equilateral    |
|    50  |   50   |  50    |  Equilateral    |
|    199 |   199  |  199   |  Equilateral    |
|    200 |   200  |  200   |  Equilateral    | 
|    201 |   201  |  201   |  Not a triangle |

## TASK 3: ECP AND THE TRIANGLES PROBLEM

### Weak Normal Equivalence Class Partitioning

| Side A | Side B | Side C | Expected Result |
|--------|--------|--------|-----------------|
|    10  |    10  |    10  |  Equilateral    |
|    10  |    8   |    8   |  Isosceles      |
|    10  |    7   |    5   |  Scalene        |
|    10  |    6   |    4   |  Not a tiangle  |

Strong normal equivalence class partitioning would not product any additional test cases
because by testing for all expected valid results, we've already tested inputs where all
the values are the same, two values are the same, and all the values are different, which
is what the 'Strong' part of Strong normal ECP would do.

## TASK 4: DECISION TABLES AND THE TRIANGLES PROBLEM

|                | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10| 11|
|----------------|---|---|---|---|---|---|---|---|---|---|---|
| a<b+c          | F | T | T | T | T | T | T | T | T | T | T |
| b<a+c          | - | F | T | T | T | T | T | T | T | T | T |
| c<a+b          | - | - | F | T | T | T | T | T | T | T | T |
| a=b            | - | - | - | T | T | T | F | T | F | F | F |
| b=c            | - | - | - | T | T | F | T | F | T | F | F |
| c=a            | - | - | - | T | F | T | T | F | F | T | F |
|                |   |   |   |   |   |   |   |   |   |   |   |
| Not a triangle | X | X | X |   |   |   |   |   |   |   |   |
| Scalene        |   |   |   |   |   |   |   |   |   |   | X |
| Isosceles      |   |   |   |   |   |   |   | X | X | X |   |
| Equilateral    |   |   |   | X |   |   |   |   |   |   |   |
| Not possible   |   |   |   |   | X | X | X |   |   |   |   |

## QUICK QUIZ

1. Which of the three black-box techniques on average requires the most effort?
Robust worst case BVA, worst case BVA, Strong Robust ECP

2. Which of the three black-box techniques on average produces the least number of test cases?
Simple BVA, Weak normal ECP, Weak robust ECP

3. Are the three black-box techniques complementary or contrasting techniques?
BVA is basically an extension of ECP, so it can be used as a complementary technique to ECP.
Decision trees can also be used to complement the other techniques to ensure all possible
conditions are covered in the tests.


















