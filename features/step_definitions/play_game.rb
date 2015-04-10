Given(/^I am on the game page$/) do
  visit '/game'
end

Then(/^I should be on the Game page$/) do |game|
  expect(current_path).to eq game
end

When(/^I press Rock$/) do |rock|
  click_button('rock')
end

When(/^I click "([^"]*)"$/) do |rock|
  click_button('rock')
end

Then(/^I should be on the Result page$/) do |result|
  expect(current_path).to eq result
end

Given(/^I am on the result page$/) do
  visit '/result'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end
