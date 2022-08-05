# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Google API testing Feature

  Background:
    * configure headers = { Content-Type: 'application/json; charset=utf-8', Accept-Encoding: 'gzip,deflate,br'}
    * url 'https://rahulshettyacademy.com'

    # add location
  Scenario: Create google location using POST api
    * def requestPayload =
    """
    {
  "location": {
    "lat": -38.383494,
    "lng": 33.427362
  },
  "accuracy": 50,
  "name": "Frontline house",
  "phone_number": "(+91) 983 893 3937",
  "address": "29, side layout, cohen 09",
  "types": [
    "shoe park",
    "shop"
  ],
  "website": "http://google.com",
  "language": "French-IN"
}
    """
    Given path '/maps/api/place/add/json'
    And request requestPayload
    And param key = 'qaclick'
    When method post
    Then status 200
    And print response
    And match $.status == 'OK'
    And match $.scope == 'APP'
    * def placeId = $.place_id
    * print placeId

    # fetch location using GET api
    Given path '/maps/api/place/get/json'
    And param key = 'qaclick'
    And param place_id = placeId
    When method GET
    Then status 200
    And print response
    * match $.name == 'Frontline house'




