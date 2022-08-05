# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Read simple Json
  Scenario: Json reader parser
    * def jsonObj =
    """
    {
  "dashboard": {
    "purchaseAmount": 910,
    "website": "rahulshettyacademy.com"
     },
    "courses": [
    {
      "title": "Selenium Python",
      "price": 50,
      "copies": 6
    },
    {
      "title": "Cypress",
      "price": 40,
      "copies": 4
    },
    {
      "title": "RPA",
      "price": 45,
      "copies": 10
    }
    ]
    }
    """
    * print jsonObj
    * print jsonObj.dashboard
    * print jsonObj.courses
    * print jsonObj.courses[0]
    * print jsonObj.courses[0].title + " " + jsonObj.courses[0].price + " " + jsonObj.courses[0].copies
    * print jsonObj.courses[1]
    * print jsonObj.courses[1].title + " " + jsonObj.courses[1].price + " " + jsonObj.courses[1].copies
    * print jsonObj.courses[2]
    * print jsonObj.courses[2].title + " " + jsonObj.courses[2].price + " " + jsonObj.courses[2].copies

