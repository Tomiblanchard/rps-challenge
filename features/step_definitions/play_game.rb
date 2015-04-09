Given(/^I am on the Game page$/) do
  visit('/game')
end

When(/^I choose a weapon$/) do
  choose('rock')
end

Then(/^I should see the results page$/) do
  visit('/outcome')
end

Given(/^I click "([^"]*)"$/) do |arg1|
  click_button arg1
end

Then(/^I should be on the "([^"]*)" page$/) do |arg1|
  expect(current_path).to eq arg1
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Then(/^the page should have "([^"]*)" button$/) do |arg1|
  expect(page).to have_button arg1
end

Given(/^I follow link "([^"]*)"$/) do |arg1|
  click_link arg1
end
