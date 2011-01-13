Feature: Create an Expense
	So that users can create expenses
	As a user
	I want to be able to create an expense
	
	Scenario: Creating a new Expense
		Given I am on the homepage
		When I press "Create Expense"
		Then I should see "New Expense"
		
		When I fill in "Title" with "My Title"
		And I fill in "Description" with "My Description"
		And I press "Save"
		Then I should see "Expense Created"