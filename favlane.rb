#!/usr/bin/env ruby
require 'twitter'

username = ARGV[0]
unless username
  puts "Usage: #{$0} [username]"
  exit 1
end

Twitter.configure do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.oauth_token = ENV['OAUTH_TOKEN']
  config.oauth_token_secret = ENV['OAUTH_TOKEN_SECRET']
end

tweets = []
favorites = Twitter.favorites(count: 200)
while favorites.size > 0
  favorites.each do |tweet|
    screen_name = tweet.user.screen_name
    next unless screen_name == username
    puts "#{screen_name}: #{tweet.text} (at #{tweet.created_at})"
  end
  last_id = favorites.last.id
  favorites = Twitter.favorites(max_id: last_id, count: 200)
end
