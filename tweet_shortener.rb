require 'pry'
# Write your code here.

def dictionary (tweet_array)
  dictionary_hash = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
  
new_tweet_array = 
  tweet_array.collect do |i|
    new_word = i
    keys = dictionary_hash.keys
    keys.each do |j|
      if j == i 
        new_word = dictionary_hash[j]
      end
    end
    i = new_word
  end
  new_tweet_array
end

def word_substituter (tweet)
  split_tweet = tweet.split(" ")
  fixed_split_tweet = dictionary (split_tweet)
  joined_tweet = fixed_split_tweet.join(" ") 
  joined_tweet
end
  
def bulk_tweet_shortener (array_of_tweets)
  array_of_tweets.each do |i| 
    puts word_substituter(i)
  end
end
  