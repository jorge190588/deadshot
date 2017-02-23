


Given(/^voy al juego$/) do
   visit '/'
end

Then(/^debe decir "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

