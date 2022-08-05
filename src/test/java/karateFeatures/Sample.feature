# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

  Feature: Perform Basic stuffs with diffrent scenarios

    Scenario: Verify printing HELLO WORLD in console
      * print "HELLO WORLD !!"
      * print 'Welcome to API Automation !!'

    Scenario: Declare and print variable
      * def bal = 2000
      * def fee = 200
      * def tax = 0.18
      * print 'Total amount is ---->' + (bal + fee + tax)

    Scenario: Perform arithmetic operations
      * def a = 20
      * def b = 5
      * print 'addition is  ---->' + (a+b)
      * print 'subtraction is  ---->' + (a-b)
      * print 'multiplication is  ---->' + (a*b)
      * print 'division is  ---->' + (a/b)