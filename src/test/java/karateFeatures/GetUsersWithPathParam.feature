# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: Get User Details with path parameter
  Scenario: testing the get call for User Details
    Given url 'https://gorest.co.in/public/v2/users'
    And path '50'
    When method GET
    Then status 200
    * print response
    * def jsonResp = response
    * print jsonResp
    * def actId = jsonResp.id
    * def actName = jsonResp.name
    * def actEmail = jsonResp.email
    * def actGender = jsonResp.gender
    * def actStatus = jsonResp.status
    * match actId == 50
    * match actName == 'Rep. Girja Bharadwaj'
    * match actEmail == 'rep_bharadwaj_girja@bins-maggio.biz'
    * match actGender == 'male'
    * match actStatus == 'active'




  Scenario: testing the get call for User Details- NEGATIVE SCENARIO
    Given url 'https://gorest.co.in/public/v2/users'
    And path '1'
    When method GET
    Then status 404