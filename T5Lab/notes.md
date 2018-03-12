## TASK 1: UNDERSTANDING CODE COVERAGE

- Statement Coverage: Identify a set of test cases to exercise each statement at least once.
This lets us know whether each statement is executed as expected. Statements include control
statements or any other statements the change the flow of code. Helps find dead

- Branch Coverage: Identify a set of test cases to exercise each branch at least once.
This lets us know whether each branch is executed as expected. For compound decisions, the
second decision is dependant on a previous decision. 100% branch coverage -> 100% statement coverage.

- Condition Coverage: Two tests for every condition in the program. Enables us to know whether
all conditions are necessary. Redundant tests are avoided, one test may test more than one
decision/condition.

- Loop Coverage: Identify a set of test cases that can be used to verify that a loop executes
as expected. We check entering the loop and exiting the loop, or the boundaries of the loop.

## TASK 2: TEST CASES FOR STATEMENT COVERAGE

- What is the rule of thumb for predicting the number of test cases required for 100% 
statement coverage? **Number of test cases = the number of ‘else’ parts in  the code + 1**

- How many test cases are required to achieve 100% statementcoverage of the method classify? **4**

How many test cases are required to achieve 100% statement coverage of the method isRightAngled? **4**

Test cases to acheive 100% statement coverage in `isRightAngled`

| Test Case ID | Side A | Side B | Side C | Expected Result |
|--------------|--------|--------|--------|-----------------|
|       1      |    2   |   3    |   5    |      False      |
|       2      |    5   |   4    |   3    |      True       |
|       3      |    4   |   5    |   3    |      True       |
|       4      |    3   |   4    |   5    |      True       |

What difference would this alternative implementation make to the number of test cases 
required for 100% statement coverage? Why? **3**, one less. This is because the last return
would always be accessed, removing the need to test for an invalid triangle. There is essentially
one less `else` statement in the alternative method.

## TASK 3: TEST COVERAGE FOR BRANCH COVERAGE

What is the rule of thumb for predicting how many test cases are required for 100% branch coverage?
minimum number of tests cases = number of end points

How many test cases are required to achieve 100% branch coverage of the method isInRange? **4**

Test cases to acheive 100% branch coverage in `isInRange`

| Test Case ID | Side A | Side B | Side C | Expected Result |
|--------------|--------|--------|--------|-----------------|
|       1      |    0   |   3    |   3    |      False      |
|       2      |    3   |   0    |   3    |      False      |
|       3      |    3   |   3    |   0    |      False      |
|       4      |    3   |   3    |   3    |      True       |

Does 100% branch coverage provide 100% statement coverage? **Yes**

How many more test cases are generally identified using 100% branch coverage as opposed to 
100% statement coverage?
Generally, statement coverage results in about half the number of test cases when compared to
branch coverage. For statement coverage, to achieve 100% statement coverage, the number of branches
you need to execute >= 50%

## TASK 4: TEST CASES FOR CONDITION COVERAGE

What is the rule of thumb for the number of test cases required for multiple condition coverage?
Minimum number of tests = n + 1 where n is number of conditions 
Maximum number of tests = 2^n
Where n is the number of boolean expressions.

How many test cases would be required for 100% condition coverage of just the last if statement 
(line 129) of the method classify? 2^3=**8**

Does 100% condition coverage provide 100% branch coverage? Yes, every condition of the branch
is tested, so there will be tests where the condition results in going to the true branch and
the false branch

## TASK 5: TEST CASES FOR LOOP COVERAGE

How many test cases would be required to achieve loop coverage for the inner-most loop (line 238)?
**7**, 3 tests around the minimum (one skip, one loop, two loops), 1 test to test a normal
loop, 3 tests around the max, (one less than the max, one at the max, and one +1 over the max)

Test cases for the inner loop for triangles in the range 1 - 200

| Test Case ID | Min | Max |
|--------------|-----|-----|
|       1      | 201 | 200 |
|       2      | 200 | 200 |
|       3      | 199 | 200 |
|       4      | 100 | 200 |
|       5      |  1  |  0  |
|       6      |  1  |  1  |
|       7      |  1  |  2  |

How would you go about testing all three nested loops? How many test cases would be required 
for loop coverage of all three nested loops?
Start with the inner most loop, set the outer loop values to their minimum and maximum. Perform
simple loop coverage on the inner most loop, as done above. When this is done, move to the next
outer loop. Perform the same simple loop coverage as done above, but for each value you use within
this loop, you need to also change the first loop. The same for the most outer loop. This means
that the number of tests would be 7^3 = 147

## QUICK QUIZ
What are the key similarities/differences between each of the four code coverage techniques?
The code coverage techniques all build on eachother. They can each be used to help identify
different defects in the code. 100% condition coverage = 100% branch coverage = 100% statement
coverage. Also, generally, condition coverage tests >= branch coverage tests >= statement coverage
tests. Loop coverage helps us thoroughly test all the possible ways a loop can be traversed

