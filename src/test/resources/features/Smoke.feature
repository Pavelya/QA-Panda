@smoke_tests 
Feature: Verify core founctionality 

	As an Internet user
  I want to be able to navigate to main travelpayouts page
  So that I can use main functionality

Background: 
	Given user opens travelpayouts page 
	
Scenario: Search form content validation 
	And search form title is displayed with valid content 
	Then user settings dropdown is displayed 
	And switcher between flighs and hotels is displayed 
	And search hotels form is displayed with valid content 
	
Scenario: Search for hotel 
	And user search for Moscow city in search hotels form 
	And user selects valid checkin date value 
	And user selects valid checkout date value 
	And user updates number of guests 
	And user clicks on search submit button 
	Then search results are displayed 
	And user clicks on Book button for the first suggested hotel 
	Then  the user is redirected to partner page 
	
Scenario: Open hotel detailed page 
	And  user search for Moscow city in search hotels form 
	And  user clicks on search submit button 
	Then  search results are displayed 
	When  user clicks on hotel name for the first suggested hotel 
	Then  the page with hotel details is displayed with valid content 
	
Scenario: Book hotel from selected provider 
	And user search for Moscow city in search hotels form 
	And user clicks on search submit button 
	Then search results are displayed 
	When user clicks on partner price link for the first suggested hotel 
	Then the user is redirected to partner page 
	#	
	#Scenario: Search for flight 
	#	And user switches to flight search 
	#	And user selects Leeds as ofigin 
	#	And user selects Moscow as destination 
	#	And user selects valid departure date value 
	#	And user selects valid return date value 
	#	And user update number of passengers 
	#	And user clicks on search submit button 
	#	And search results are displayed 
	#	When user is clicked on Book button for the first sugested flight 
	#	Then the user is redirected to external provider 
	#	
	#Scenario: Click on flight discounted price link 
	#	And user switches to flight search 
	#	And user selects Leeds as ofigin 
	#	And user selects Moscow as destination 
	#	And user clicks on search submit button 
	#	And search results are displayed 
	#	When user is clicked on discounted price link 
	#	Then the user is redirected to selected external provider 
	#	
	#	
	#Scenario: Change currency 
	#	And user changes the currency value to EUR 
	#	Then page is reloaded and new currency value is set 
	#	
	#Scenario: Change language 
	#	And user changes the languge value to Russian 
	#	Then page is reloaded and new language value is set 
	#	
	#Scenario: Footer validation 
	#	Then footer is displayed with valid content 
	#	And cookie baner is displayed with valid content
	#	And user can close the cookie banner
	#	And cookie baner is not displayed
	#	And user can launch terms and condition links
	
	#Scenario: Header validation 
	#	Then header is displayed with valid content