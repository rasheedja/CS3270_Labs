## TASK 1: UNDERSTANDING BDD TERMINOLOGY

https://leanagilemachine.blogspot.co.uk/p/bdd.html

Second Generation: BDD is described as the second generation of testing, it evolved from TDD

Outside-in: understand system usage from the outside (user interfaces) inwards

Pull based system: produce only that which is ready to be used by people, systems, or code closer to a boundary or UI

Multiple stakeholder: Core and incidental stakeholders - Core stakeholders define the vision and often provide budget; Incidental stakeholders support the solution delivery and may influence that solution

Multiple scale: BDD applied from end to end, from small feature set to enterprise projects

High automation: automation of testing (acceptance & unit) hence reducing the expense of scenario and examples testing; Enabling and inviting change through acceptance tests and reducing the impact of change

Ubiquitous language: using the langauge of the domain consistently, end to end in the solution artefacts; name things with respect to their behavior in the domain.  Using Given,When,Then also provides structure to the ubiquitous language.

## TASK 2: COMPARING BDD AND TDD

Encourages a test first approach: TDD does focus more on writing  tests first. Tests must be written before a feature is coded. BDD is more for testing features rather than the code so tests may be written after the code is complete.

Focuses on the values of the customer: Ubiquitous language, from BDD focuses on giving value to the customer. The clauses are represented by specific values and actions. TDD is more for developers.

In practice, has a single stakeholder: BDD has multiple stakeholders, TDD normally has one; the tester/developer.

Is an agile methodology: Both are agile methodologies

## TASK 3: WRITING USER STORIES

A University student purchasing a parking pass
As a university student
I want to purchase a parking pass
So that I have access to the car park to park my car

A bank customer withdrawing cash from an ATM
As a bank customer
I want to be able to withdraw cash from an ATM
So that I can access cash from my bank account using the ATM

A book store customer searching for a book by its author
As a book store customer
I want books to be sorted alphabetically using the name of the author
So that I can easily find books written by a specific author

Why is it advantageous to include the benefit in a user story?
So that stakeholders can agree on the benefit a feature should deliver, preventing misunderstandings 
later on.

What is implied if a feature in a user story does not actually deliver the benefit attributed to it
in the same user story?  
Either the feature is incomplete or the user story was poorly written.

## TASK 4: WRITING SCENARIOS

Title: Member logins into website

Narrative:
As a member
I want to login to the website
So that I can access member only information

Acceptance Criteria:
Scenario 1: Login with ‘validUsername’ and ‘validPassword’ and the ‘Remember  Me’ option ticked.

Given I am on the login page
And a valid username is entered in the username field
And a valid password is entered in the password field
And the 'Remember Me' option is checked
When I click the submit button
Then I should be logged in
And I should be able to access member only information

Scenario 2: Attempt Login with ‘validUsername’ and ‘invalidPassword’

Given I am on the login page
And a valid username is entered in the username field
And a invalid password is entered in the password field
When I click the submit button
Then I should not be logged in
And I should see an error message
And the error message should say 'Invalid Password'

Scenario   3:   Attempt   login   with   valid   login credentials  while the
‘LoginAuthenticationService’ is down.

Given I am on the login page
And the LoginAuthenticationService is down
And a valid username is entered in the username field
And a valid password is entered in the password field
When I click the submit button
Then I should not be logged in
And I should see an error message
And the error message should say 'Login Authentication Servie is down'

Modified Scenario 2: Attempt multiple logins with ‘validUsername’ and ‘invalidPassword’

Given I am on the login page
And a valid username is entered in the username field
And a invalid password is entered in the password field
And I click the submit button
And a valid username is entered in the username field
And a invalid password is entered in the password field
And I click the submit button
And a valid username is entered in the username field
And a invalid password is entered in the password field
When I click the submit button
Then I should not be logged in
And I should see an error message
And the error message should say 'maximum failed login attempts made'

## TASK 5: UNDERSTANDING THE GAME OF LIFE

Grid 1: Same as Initial
Grid 2: Empty, everyone dies
Grid 3: Corners are filled in

## TASK 6: WRITING A USER STORY FOR THE GAME OF LIFE

Scenario 2: Still life with the block
Given a grid with 4 rows and 4 columns
And the cell at 1, 1 is set alive
And the cell at 1, 2 is set alive
And the cell at 2, 1 is set alive
And the cell at 2, 2 is set alive
When the cells are mutated
Then the cell at 1, 1 should be alive
Then the cell at 1, 2 should be alive
Then the cell at 2, 1 should be alive
Then the cell at 2, 2 should be alive
