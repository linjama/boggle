Feature: Boggle game descriptions

  So that I and my family can play our favorite game Boggle
  As a boggle fan
  I want to implement boggle game in my browser.
  
  Scenario: Open Boggle in browser of game
    Given initial status of game
    When I open Boggle in the browser
    Then I see empty game without letters
    And I see button to generate a new game
    
  Scenario: Start of new game
    Given initial status of game
    When I click 'New game' button
    Then new set of letters is displayed
    And letters are random