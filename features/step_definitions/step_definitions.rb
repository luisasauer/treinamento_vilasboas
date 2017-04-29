Given(/^I am on "([^"]*)" website$/) do |arg1|
visit arg1
end

Given(/^I fill in the "([^"]*)" field with "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1,with: arg2)
end

When(/^I click on the "([^"]*)" button$/) do |arg1|
  click_button arg1
end

Then(/^the fields should be empty$/) do
	assert_no_text ("Luisa")
	assert_no_text ("Freire")
	assert_no_text ("Sauerbronn")
	assert_no_text ("27")
	assert_no_text ("luisa@gmail.com")
	assert_no_text ("TI")
	assert_no_text ("Feminino")
	page.should have_field("")
end


Then(/^the buttons are missing$/) do
	assert_no_selector("#btn_one")
	assert_no_selector("#btn_two")
	assert_no_selector("#btn_three")
	assert_no_selector("#btn_link")	
end

Then(/^the buttons appear$/) do
	assert_selector("#btn_one")
	assert_selector("#btn_two")
	assert_selector("#btn_three")
	assert_selector("#btn_link")  
end

When(/^I select the "([^"]*)" option on "([^"]*)"$/) do |arg1,arg2|
	select(arg1, from: arg2)
end

Then(/^I verify that "([^"]*)" is selected$/) do |arg1|
	raise "Opção não selecionada" if find_field('select_box').value != arg1
	
end

When(/^I select the "([^"]*)" on checkbox$/) do |arg1|
	check(arg1)
end

Then(/^I verify that "([^"]*)" is not selected$/) do |arg1|
	raise "A opção está selecionada" if has_unchecked_field?(arg1) == false
end


Then(/^I verify the Images Asserts$/) do
	page.should have_xpath(".//*[@id='panel_body_three']/img[4]")  
end

Then(/^I verify the "([^"]*)" text$/) do |arg1|
	within('div#well_text') do
		assert_text(arg1)
	end 
end



	