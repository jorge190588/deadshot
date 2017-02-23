


Given(/^voy al juego$/) do
   visit '/'
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
