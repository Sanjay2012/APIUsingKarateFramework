# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Read complex Json
  Scenario: Complex Json obj reader parser
    * def jsonObj =
    """
    {
  "instructor": "RahulShetty",
  "url": "rahulshettycademy.com",
  "services": "projectSupport",
  "expertise": "Automation",
  "courses": {
    "webAutomation": [
      {
        "courseTitle": "Selenium Webdriver Java",
        "price": "50"
      },
      {
        "courseTitle": "Cypress",
        "price": "40"
      },
      {
        "courseTitle": "Protractor",
        "price": "40"
      }
    ],
    "api": [
      {
        "courseTitle": "Rest Assured Automation using Java",
        "price": "50"
      },
      {
        "courseTitle": "SoapUI Webservices testing",
        "price": "40"
      }
    ],
    "mobile": [
      {
        "courseTitle": "Appium-Mobile Automation using Java",
        "price": "50"
      }
    ]
    },
    "linkedIn": "https://www.linkedin.com/in/rahul-shetty-trainer/"
    }
    """

    * print jsonObj
    * print jsonObj.instructor
    * print jsonObj.url
    * print jsonObj.services
    * print jsonObj.expertise
    * print jsonObj.courses
    * print jsonObj.linkedIn
    * print jsonObj.courses.webAutomation
    * print jsonObj.courses.webAutomation[0].courseTitle + " " + jsonObj.courses.webAutomation[0].price
    * print jsonObj.courses.webAutomation[1].courseTitle + " " + jsonObj.courses.webAutomation[1].price
    * print jsonObj.courses.api
    * print jsonObj.courses.mobile


  Scenario: Complex Json object reader parser
    * def jsonObj =
    """
    {
    "menu": {
      "id": "file",
      "value": "file",
      "popup": {
        "menuitem": [
          {"value": "New", "onClick": "CreateDoc()"},
          {"value": "Open", "onClick": "OpenDoc()"},
          {"value": "Close", "onClick": "CloseDoc()"}
        ]
      }
    }
    }
    """
    * print jsonObj
    * print jsonObj.menu
    * print jsonObj.menu.id
    * print jsonObj.menu.value
    * print jsonObj.menu.popup
    * print jsonObj.menu.popup.menuitem
    * print jsonObj.menu.popup.menuitem[0].value + " " + jsonObj.menu.popup.menuitem[0].onClick
    * print jsonObj.menu.popup.menuitem[1].value + " " + jsonObj.menu.popup.menuitem[1].onClick
    * print jsonObj.menu.popup.menuitem[2].value + " " + jsonObj.menu.popup.menuitem[2].onClick
