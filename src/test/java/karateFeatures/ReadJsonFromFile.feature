# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Go Reat API Testing feature

  Background:
    * configure headers = { Content-Type: 'application/json; charset=utf-8', Accept-Encoding: 'gzip,deflate', Content-Encoding: 'gzip'}
    * header Authorization = 'Bearer f4fae6da7132baea9a8554e4ece1f6d6ba9f3eb63f2808b74d6dd5f5434e6460'
    * url 'https://gorest.co.in'

  Scenario: Create user with given data
    * def random_string =
    """
    function(s){
    var text = "";
    var pattern = "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuioplkjhgfdsazxcvbnm";
    for(var i=0; i<s; i++)
    text+=pattern.charAt(Math.floor(Math.random() * pattern.length()));
    return text;
    }
    """
    * def randomString = random_string(10)
    * print randomString
    * def requestPayload = read('data/users.json')
    # * requestPayload.email = randomString + "@gmail.com"
    * set requestPayload.email = randomString + "@gmail.com"
    * print requestPayload

    Given path '/public/v2/users'
    And request requestPayload
    When method POST
    Then status 201
    And print response
    And match $.id == '#present'
    And match $.name == 'Shiv Kumar'
    And match $.gender == 'male'
    And match $.status == 'active'
    And match $.email == requestPayload.email

