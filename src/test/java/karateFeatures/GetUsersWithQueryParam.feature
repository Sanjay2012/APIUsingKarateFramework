# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Get User Details with query parameters
  Scenario: get all active and male User Details
    * def query = {status:'active', gender:'male'}
    Given url 'https://gorest.co.in/public/v2/users'
    And params query
    When method GET
    Then status 200
    * def jsonResp = response
    * print jsonResp
    * def userCount = jsonResp.length
    * print userCount
    * match userCount == 10

Scenario: get all active and female User Details
* def query = {status:'active', gender:'female'}
Given url 'https://gorest.co.in/public/v2/users'
And params query
When method GET
Then status 200
* def jsonResp = response
* print jsonResp
* def userCount = jsonResp.length
* print userCount
* match userCount == 10

Scenario: get all inactive and male User Details
* def query = {status:'inactive', gender:'male'}
Given url 'https://gorest.co.in/public/v2/users'
And params query
When method GET
Then status 200
* def jsonResp = response
* print jsonResp
* def userCount = jsonResp.length
* print userCount
* match userCount == 10



Scenario: get all inactive and female User Details
* def query = {status:'inactive', gender:'female'}
Given url 'https://gorest.co.in/public/v2/users'
And params query
When method GET
Then status 200
* def jsonResp = response
* print jsonResp
* def userCount = jsonResp.length
* print userCount
* match userCount == 10
* def actName = jsonResp[1].name
* match actName == 'Chandra Nayar'