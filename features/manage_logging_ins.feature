Feature: Manage logging_ins
  In order to log in
  Users should be able to log in/out

  Scenario: Registering
    Given I am not logged in
		And I am on the home page
		And I have no users
    When I follow "Register"
		And I fill in "Username" with "sam" 
		And I fill in "Email" with "sam@someemail.com" 
		And I fill in "Password" with "sam123" 
		And I fill in "Password confirmation" with "sam123" 
		And I press "Submit"
		Then I should see "Registration Successful"
		And I should be on the home page
		And I should see "Edit profile"
		
	Scenario Outline: Test Log in/out for users
		Given a user named "mike"
		And I am on the home page
		When I fill in "Username" with "<login>"
		And I fill in "Password" with "<pass>"
		And I press "Submit"
		Then I should <action>
		
		Examples:
		 | login | pass         | action                       |
		 | mike  | secret       | see "Successfully logged in" |
		 | mike  | wrong_secret | see "Password is not valid"  |
		 | dude  | secret       | see "Username is not valid"  |



			
			
