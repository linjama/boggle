Given(/^initial status of game$/) do
  @game = BoggleGame.new
end

When(/^I open Boggle in the browser$/) do
  visit 'boggle_game/index'
end

Then(/^I see empty game without letters$/) do
  pending
end

Then(/^I see button to generate a new game$/) do
  pending # express the regexp above with the code you wish you had
end