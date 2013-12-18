Feature: Boggle game descriptions

  So that I and my family can play our favorite game Boggle
  As a boggle fan
  I want to implement boggle game in my browser.
  
  Scenario: Start of game
    Given initial status of game
    When I open Boggle in the browser
    Then I see empty game without letters
    And I see button to generate a new game