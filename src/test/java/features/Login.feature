Feature: Application Login


  Scenario: Home page default login
    Given User is on NetBanking landing page
    When User login into application with "jin" and password "1234"
    Then Home page is populated
    And Cards displayed are "true"
  @SmokeTest
  Scenario: Home page default login
    Given User is on NetBanking landing page
    When User login into application with "john" and password "4321"
    Then Home page is populated
    And Cards displayed are "false"

  Scenario: Home page default login
    Given User is on NetBanking landing page
    When User user sign up with fallowing details
    | jenny | abcd | john@abcd.com | Australia | 123456 |
    Then Home page is populated
    And Cards displayed are "false"

  @SmokeTest
  Scenario Outline: Home page default login
    Given User is on NetBanking landing page
    When User login in the application with <Username> and password <password>
    Then Home page is populated
    And Cards displayed are "true"

    Examples:
    |Username |password|
    |user1    |passs1  |
    |user2    |passs2  |
    |user3    |passs3  |
    |user4    |passs4  |