
Given(/^voy al juego$/) do
   visit '/unjugador'
end

Then(/^debe decir "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end


When(/^disparo a "(.*?)"$/) do |url|
  click_link(url)
end

Then(/^debe resultar "(.*?)"$/) do |resultado|
  last_response.body.should =~ /#{resultado}/m
end

When(/^dispado a "(.*?)"$/) do |url|
    click_link(url)
end

Given(/^voy al juego en modo dos jugadores con opcion de inicio "(.*?)"$/) do |opcion_inicio|
  visit "/dosjugadores/#{opcion_inicio}"
end

