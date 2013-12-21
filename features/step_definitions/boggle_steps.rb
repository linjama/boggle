Given(/^initial status of game$/) do
  @game = BoggleGame.new(letters: '*'*16)
  @game.save!
end

# Initial status: Empty game
When(/^I open Boggle in the browser$/) do
  visit 'boggle_game/index'
end

Then(/^I see empty game without letters$/) do
  page.should have_selector('td.boggle-letter', count: 16)
  page.all('td.boggle-letter').each { |element| element.should have_text('*') }
end

Then(/^I see button to generate a new game$/) do
  page.should have_button 'Start game'
end

# Click Start game button to generate letters
When(/^I click 'Start game' button$/) do
  visit 'boggle_game/index'
  click_button 'Start game'
end

Then(/^new random set of letters is displayed$/) do
  page.should have_selector('td.boggle-letter', count: 16)
  page.all('td.boggle-letter').each { |element| element.should have_text(/\w/) }
end