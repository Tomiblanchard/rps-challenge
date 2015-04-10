Feature: Starting the game
  As a marketeer
  So that I can see my name in lights
  I would like to register my name before playing an online game

Scenario: Homepage
  Given I am on the homepage
  Then I should see "Rock Paper Scissors!"
  Then the page should have the "Start Game!" button

Scenario: Registering with a name
  Given I am on the homepage
  When I submit a name
  And I press "Start Game!"
  Then I should see "Choose a weapon!"

Scenario: Registering without a name
  Given I am on the homepage
  When I do not submit a name
  And I press "Start Game!"
  Then I should see "Please register!"
