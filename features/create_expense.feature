Feature: Create an Expense
	So that users can create expenses
	As a user
	I want to be able to create an expense
	
	Scenario: Creating a new Expense
		Given I am on the homepage
		When I click "Create Expense"
		Then I should see "New Expense"