# Author: Sanjay Waware
# Email: sanjaywaware04@gmail.com

Feature: GET API Header features
  Scenario: pass the header request with headers- part 1
    Given  header Content-Type = 'application/json; charset=utf-8'
    And header Connection = 'keep-alive'
    And header Accept-Encoding = 'gzip,deflate'
    And header User-Agent = 'Apache-HttpClient/4.5.12 (Java/1.8.0_311)'
    When url 'https://gorest.co.in/public/v2/users'
    And path '50'
    When method GET
    Then status 200
    * print response

  Scenario: pass the header request with headers- part 2
    * def header_request = { Content-Type: 'application/json; charset=utf-8', Connection: 'Keep-Alive', User-Agent: 'Apache-HttpClient/4.5.12 (Java/1.8.0_311)', Accept-Encoding: 'gzip,deflate'}
    Given headers header_request
    When url 'https://gorest.co.in/public/v2/users'
    And path '50'
    When method GET
    Then status 200
    * print response

  Scenario: pass the header request with headers- part 3
    * configure headers = { Content-Type: 'application/json; charset=utf-8', Connection: 'Keep-Alive', User-Agent: 'Apache-HttpClient/4.5.12 (Java/1.8.0_311)', Accept-Encoding: 'gzip,deflate'}
    When url 'https://gorest.co.in/public/v2/users'
    And path '50'
    When method GET
    Then status 200
    * print response