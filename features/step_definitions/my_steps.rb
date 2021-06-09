Given(/^the following candidates exist:$/) do |table|
  table.hashes.each do |candidate|
    Candidate.create!(candidate)
  end
end

Given(/^the following votes exist:$/) do |table|
  table.hashes.each do |vote|
    Vote.create!(vote)
  end
end

When(/^I go to the candidates page$/) do
  visit root_path
  page.find_by_id('admin').click
  page.find_by_id('candidates').click

end

When(/^I go to the results page$/) do
  visit root_path
  page.find_by_id('admin').click
end

When(/^I go to the voting page$/) do
  visit root_path
  page.find_by_id('voter').click
end
# party_preferences[0][preference]
# , match: :first

When(/^I vote for Liberal Party of Australia with preference "([^"]*)"$/) do |arg|
  fill_in('party_preferences__preference', match: :first, with: arg)
  log(URI.parse(current_url).path)
  click_link_or_button 'submit'
end

Then(/^I should see "([^"]*)", "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4|
  expect(page).to have_content(arg1)
  expect(page).to have_content(arg2)
  expect(page).to have_content(arg3)
  expect(page).to have_content(arg4)
end

Then(/^I should see "([^"]*)" having "([^"]*)" vote at preference "([^"]*)"$/) do |arg1, arg2, arg3|
  within(:xpath, "//tr[.//*[contains(text(), '#{arg1}')]]") do
    expect(find(:xpath, ".//td[contains(@id,'#{arg2}')]").text).to have_content(arg3)
  end
end

Then(/^"([^"]*)" should have "([^"]*)" vote at preference "([^"]*)"$/) do |arg1, arg2, arg3|
  visit root_path
  page.find_by_id('admin').click
  within(:xpath, "//tr[.//*[contains(text(), '#{arg1}')]]") do
    expect(find(:xpath, ".//td[contains(@id,'#{arg2}')]").text).to have_content(arg3)
  end
end

Then(/^I should see both options for "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|
  visit root_path
  page.find_by_id('voter').click
  expect(page).to have_content(arg1)
  expect(page).to have_content(arg2)
end