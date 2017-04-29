Feature: Validation of Vilas Boas website

Scenario: Fill in the website fields

Given I am on "http://vilasboasit.com/tests.html" website
And I fill in the "YourFirstName" field with "Luisa"
And I fill in the "YourMidName" field with "Freire"
And I fill in the "YourLastName" field with "Sauerbronn"
And I fill in the "YourAge" field with "27"
And I fill in the "YourEmail" field with "luisa@gmail.com"
And I fill in the "YourJob" field with "TI"
And I fill in the "YourGender" field with "Feminino"
When I click on the "reset_fields" button
Then the fields should be empty


Scenario: Click on the buttons

Given I am on "http://vilasboasit.com/tests.html" website
And I click on the "One" button
And I click on the "Two" button
And I click on the "Three" button
And I click on the "Four" button
And the buttons are missing
When I click on the "Reset Buttons" button
Then the buttons appear


Scenario: Using SelectBox

Given I am on "http://vilasboasit.com/tests.html" website
When I select the "ExampleTwo" option on "select_box"
Then I verify that "option_two" is selected


Scenario: Using CheckBox 

Given I am on "http://vilasboasit.com/tests.html" website
When I select the "OptionOne" on checkbox
And I select the "OptionThree" on checkbox
Then I verify that "OptionTwo" is not selected


Scenario: Validate images

Given I am on "http://vilasboasit.com/tests.html" website
Then I verify the Images Asserts


Scenario: Validate Text

Given I am on "http://vilasboasit.com/tests.html" website
Then I verify the "Lorem ipsum" text


