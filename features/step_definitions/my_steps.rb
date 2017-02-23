


Given(/^voy al juego$/) do
   visit '/'
end

Then(/^debe decir "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end


When(/^disparo a "(.*?)"$/) do |posicion|
  
end

Then(/^debe resultar "(.*?)"$/) do |posicion|
  
end

