
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

Given(/^voy al juego en modo dos jugadores$/) do
  visit '/dosjugadores'
end

When(/^el jugador A dispara al jugador "(.*?)" en la posicion (\d+)$/) do |jugador_objetivo, posicion_disparar|
  visit "/dosjugadores/disparar/#{posicion_disparar}/#{jugador_objetivo}"
end

When(/^el jugador B dispara al jugador "(.*?)" en la posicion (\d+)$/) do |jugador_objetivo, posicion_disparar|
    visit "/dosjugadores/disparar/#{posicion_disparar}/#{jugador_objetivo}"
end
