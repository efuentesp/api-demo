Feature: Add Prospects

	As an API Client
	I want to add new Prospects
	So that I can remember them to offer later our products and/or services

		Scenario: New Prospect
		Given a set of Prospects like:
			| name         |
			| Juan Perez   |
			| Coca-Cola    |
		When the client requests POST /prospect
			And the new Prospect is:
			| name         |
			| John Smith   |
		Then the JSON response at "name" should be "John Smith"