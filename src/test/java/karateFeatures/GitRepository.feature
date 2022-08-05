# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: GET repos with authorizationn Bearer token feature
  Scenario: Get repos from git repository with bearer token
    * configure headers = { Content-Type: 'application/json; charset=utf-8', Accept-Encoding: 'gzip,deflate', Content-Encoding: 'gzip'}
    Given header Authorization = 'Bearer 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'
    When url 'https://api.github.com/user'
    And path '/repos'
    When method GET
    Then status 200
    * print response