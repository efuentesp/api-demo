Feature: List of Prospects

	As an API Client
	I want to get Prospects
	So that I can get in touch with them to offer our products and/or services

	Scenario: No Prospects
		Given a set of Prospects like:
			| name         |
		When the client requests GET /prospect
		Then the response should be JSON:
				"""
				[]
				"""

	Scenario: List all Prospects
		Given a set of Prospects like:
			| name         |
			| Juan Perez   |
			| Coca-Cola    |
			And no search criterias
		When the client requests GET /prospect
		Then the response should be JSON:
				"""
				[
				{"name": "Juan Perez"},
				{"name": "Coca-Cola"}
				]
				"""

	Scenario: List Prospects based on name
		Given a set of Prospects
			And a name as a search criteria
		When I ask for a Prospect that matches with that name
		Then I should get a list of Prospects that match with that name

	Scenario: No Prospects found with that name
		Given no Prospects
			And a name as a search criteria
		When I ask for a Prospect that matches with that name
		Then I should not get any Prospect
