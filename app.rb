require 'rubygems'
require 'bundler/setup'

require 'twitter'
require 'json'

# client = Twitter::REST::Client.new do |config|
#  config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
#  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
#  config.access_token = ENV['TWITTER_ACCESS_TOKEN']
#  config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
# end
#
#
# client.update('Tweet from the command line!')

# require 'Twitter'

# client = Twitter::REST::Client.new do |config|
#   config.consumer_key        = "1YD0nfMoRND60Fin2TdiFvRXi"
#   config.consumer_secret     = "jRFdVzO16XKg0JyXK22C55EVOszeF8waIn8vbrzyAUgcs8eNY7"
#   config.access_token        = "800480043981881345-UteUYcaYoEyWwmKxvnmNGAt3X8u8UHV"
#   config.access_token_secret = "JjE1bjDNujhJLnXAhSyk9TlBdLYbwi3lOY3AcSMVyPUAY"
# end

# client.update("I'm posting a tweet!")

# # Search for the hashtag "#hashtag". Grab the last 1 tweets
# client.search("#blacklivesmatter").take(1).each do |tweet|
#   # Push all the tweets collected one by one to the default output (command-line, usually)
#   puts tweet.text
# end

search_options = {
  result_type: "recent"# ,
#   geocode: "39.9525839,-75.1652215,10mi"
}

# client.search("blacklivesmatter", search_options).take(1).each do |tweet|
#   client.update( "#{tweet.user.screen_name}: #{tweet.text}")
# end

#remove and block inappropriate users
exclude "http://"
blocklist "mean_user, private_user"

# # favorite people who visit your timeline
# puts "checking my timeline"
# home_timeline do |tweet|
#     # i like to favorite things
#     favorite tweet
# end

# puts "checking for replies to my tweets and mentions of me"

# # reply to people who tweet at me
# replies do |tweet|
#   text = tweet.text
#   puts "message received: #{text}"
#   src = text.gsub(/@echoes_bot/, "#USER#")
#
#   # send it back!
#   reply src, tweet
# end




