Feature: Triangle
	As a user
	I want to access the triangle app
	So that I will see some informations about triangle sides

@regression
Scenario: Sending empty form
  Given I launch app
  When I send the form
  Then I must see the message "Preencha todos os campos"