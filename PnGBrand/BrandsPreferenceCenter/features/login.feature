Feature: Bounty Preference Center
  As a iPhone user
  I want to go to the login page
  So that I can try to login
 
Scenario: Blank Login
  Given I have App running with appium 
  When click + submit
  And I enter text "Data" and saved it
  Then I should see "Data" note added on home page