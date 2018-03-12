## TASK 1: UNDERSTANDING KEY TERMINOLOGY

- Scenario: A story about someone trying to do something using a product that is being tested
- Scenario Testing: Check the benefits that a program is supposed to deliver by analysing expert use
- Exploratory Testing: A purely unscripted test of a program. They are creative, help find unexpected
issues.

Briefly explain how scenario testing is conducted
Write a story, give stories to user, user executes steps in the story. Can also be automated.

Briefly explain how exploratory testing is conducted
User uses the program with no script at all. User explores as many aspects of the program as possible,
documenting issues as they come across them.

## TASK 2: WRITING A SCENARIO FOR SCEANRIO TESTING

Briefly describe a possible life history for a ‘book’ object in the
Amazon website. Make sure you start with how a book object might
be created through to the time that it is removed from the system.

Book is scanned at warehouse, stock/entry added to DB. Book is displayed in search results/pages.
Customer accesses product page of book and adds to basket. Customer purchases book, stock level
is decremented, order with book added to customer history. Book is marked for delivery. 
Book is scanned as posted by warehouse workers. Book is marked as delivered by delivery driver.

Briefly describe a possible user of the Amazon website, an interest
they may have in the system as well as a possible system objective

University student interested in finding books for their classes. User would be interested in
finding books on the amazon website. They would want a category for educational books, preferably
for their classes. User would want to be able to search books. An objective would be to be able
to get books needed for their classes by searching for them on amazon and then purchasing them.

Briefly describe a possible disfavoured user for the Amazon website
and how he/she may abuse the system

Someone who wants to receive free products. They could order a product and then say that it was
never delivered to them and ask for a refund. They could also say that the product is damaged.

List 2 possible system events that the Amazon website should be
able to handle

1. Customer orders products
2. New products scanned, need to be added to database

State a possible special event with which the Amazon website may
need to deal with
Customer orders may be lost by delivery company

State two benefits the Amazon website is supposed to deliver to a
user

1. Give users a convenient search option to allow them to find products they are interested in
2. Show products to users that they may be interested in

Briefly describe a set of tasks that can be used to deliver one of the
benefits

For benefit 1, have a search bar shown prominently on the website. When a user enters a query
to the search bar, perform a database query to find possible matching products. Display these
products to the user.

Briefly describe what else you would expect an e-commerce website
like Amazon’s website to be able to do.

Allow users to contact support if they have an issue with the website or with an order.

## TASK 3: WRITE A SCENARIO FOR THE AMAZON WEBSITE

Now that you have all the information gathered in task 2, draft a possible
scenario that would enable you to test the functionality associated with a
‘book’ object in the system. Remember you are trying to identify a series of
real life events that cause features of the system to be used.

Book arrives at warehouse and is checked in
Book is shown as available on website
User finds book and website and orders book
User's order page is updated with new order containing book
Book is marked as ordered in warehouse, packed and posted.
Website updates user's order page to show that the book has been posted
Book is delivered to user by delivery company
Website updates user's order page to show that the book has been delivered

## TASK 4: GENERATING SCENARIOS WITH EXPLORATORY TESTING

Briefly describe interesting or unusual behaviour that may be tested
as part of exploratory testing

- What happens if after I complete an order, I refresh the order confirmation page. Is another order
created?
- If a category is restricted from filtering on the frontend, can the url be edited to allow users
to filter this category?
- If i modify the price on the frontend using dev tools, is the correct price used or the modified
one when an order is submitted?
- Is it possible to modify the url from my basket to go to the order confirmation page without paying?
- If the my account page shows my user id in the url, can I modify the user id to access another
user's page?

## QUICK QUIZ

1. What are benefits/limitations of scenario testing?

Benefits: Based on actual use of the program. Stakeholder are motivated to fix any failures.
Scenarios are normally testing complex use of the program, the results are easy to evaluate.

Limitations: Can't be done on an early/unstable code base. Not for code coverage. Heavily documented,
used many times. Actual users can always perform steps not listed in a scenraio.

2. What are benefits/limitations of exploratory testing?

Benefits: Test something that's not obvious. Little documentation, focuses on testers creativity.
Supplements stories, test what's not being tested. Combines learning, test design, and test execution
into one approach. You plan as you test, information gathered during testing affect how the
tests are performed.

Limitations: Not easy, need to find creative ways that may break the system. There is no big plan
for exploratory testing.

