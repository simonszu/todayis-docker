#! /usr/bin/env ruby

require 'date'
require 'twitter'

client = Twitter::REST::Client.new do |config|
   config.consumer_key = "IGz1AqDYXSMCZSPE5uCyLYDSn"
   config.consumer_secret = "MTo4lKXWGZsYWhvyALeBtZB7dMbdGhN6eETQ6EYZ39ZpNFFNLu"
   config.access_token = "2651504701-gsgmsE3vCrlwwFNCRcQa4cYaSe1melzvowoABvo"
   config.access_token_secret = "uyHuokzO1dRv5opOrKkMwG3cJYbLVoNyYOqCGjpe8ZmpM"
end

date = Time.now().to_date

if date.monday?
  client.update("Heute ist Montag")
elsif date.tuesday?
  client.update("Heute ist Dienstag")
elsif date.wednesday?
  client.update("Heute ist Mittwoch")
elsif date.thursday?
  client.update("Heute ist Donnerstag")
elsif date.friday?
  client.update("Heute ist Freitag")
elsif date.saturday?
  client.update("Heute ist Samstag")
elsif date.sunday?
  client.update("Heute ist Sonntag")
end    

puts "Done!"