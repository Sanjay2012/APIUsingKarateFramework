# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Go Rest API Testing feature

  Background:
    * configure headers = { Content-Type: 'application/json; charset=utf-8', Accept-Encoding: 'gzip,deflate', Content-Encoding: 'gzip'}
    * header Authorization = 'Bearer f4fae6da7132baea9a8554e4ece1f6d6ba9f3eb63f2808b74d6dd5f5434e6460'
    * url 'https://gorest.co.in'

  Scenario: Get all users using --> GET api
    Given path '/public/v2/users'
    When method GET
    Then status 200
    * print response

  Scenario: Get specific user using --> GET api
    Given path '/public/v2/users/3619'
    When method GET
    Then status 200
    * print response































