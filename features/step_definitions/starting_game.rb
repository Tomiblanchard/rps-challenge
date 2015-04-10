Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should be on the "([^"]*)" page$/) do |arg1|
  expect(current_path).to eq arg1
end

Given(/^I am on the "([^"]*)" page$/) do |arg1|
  visit('/game')
  visit('/result')
end

When(/^I submit a name$/) do
  fill_in('name', :with => 'Tomi')
end

When(/^I do not submit a name$/) do
  fill_in('name', :with => '')
end

When(/^I press "([^"]*)"$/) do |start_game|
  click_button start_game
end

Then(/^the page should have the "([^"]*)" button$/) do |arg1|
  expect(page).to have_button arg1
end

Then(/^I should be asked to choose a weapon$/) do
  expect(page).to have_content('Choose your weapon')
end
