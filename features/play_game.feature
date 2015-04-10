Feature: Playing the game
  As a marketeer
  So that I can enjoy myself away from the daily grind
  I would like to be able to play rock/paper/scissors

Scenario: Enter the game with a name
  Given I am on the homepage
  When I submit a name
  And I press "Start Game!"
  Then I should be on the "/game" page
  And I should see "Hi, Tomi"

Scenario: See your choices
  Given I am on the "/game" page
  Then I should see "Rock Paper Scissors"

Scenario: Program knows what was my choice
  Given I am on the "/game" page
  When I click "Rock"
  Then I should be on the Result page
  And I should see "You chose Rock"

Scenario: See opponent's result
  Given I am on the "/result" page
  Then I should see "and your opponent chose Rock"

Scenario: Get a result and play again
  Given I am on the "/result" page
  Then I should see "You won"
  And I should see "Play again?"
