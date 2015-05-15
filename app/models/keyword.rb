require 'tweetstream'
class Keyword < ActiveRecord::Base
  has_many :tweets

  def all_letters(str)
    # Use 'str[/[a-zA-Z]*/] == str' to let all_letters
    # yield true for the empty string
    str[/[a-zA-Z]+/]  == str
  end

  def get_tweets
    TweetStream.configure do |config|
      config.consumer_key       = 'CwD4x6n4BeSXkXDoMfTCwr8xg'
      config.consumer_secret    = 'PSA8VmqOpe8tyWDf0h1k4LMl4wxAMwYcVbnmZvlNvmf4YzkETF'
      config.oauth_token        = '3232294823-yb5Hq4y9vC7kUMZnFOxryKxH0m5ibNjaJ9KlxLs'
      config.oauth_token_secret = '17atRKApfrLgVeHP76gC96ADSmc1wtQvvQlYanImeuoz0'
      config.auth_method        = :oauth
    end
    stat = Time.now
    TweetStream::Client.new.sample(language: "en") do |status,client|
      if status.is_a?(Twitter::Tweet)
        #puts status.text
        #puts stat.inspect + Time.now.inspect
        text = status.text.downcase.split
        time = Time.now
        text.each do |word|
          if all_letters(word)
            keyword = Keyword.find_by(word:word)
            if keyword
             keyword.tweets.create(tText:text,tTime:time)
            else
              keyword = Keyword.create(word:word)
              keyword.tweets.create(tText:text,tTime:time)
            end
          end
        end
      end
      break if Time.now > (stat + 10.hours)
    end
  end


  # def get_tweets2
  #   client = Twitter::Streaming::Client.new do |config|
  #       config.consumer_key = "CwD4x6n4BeSXkXDoMfTCwr8xg"
  #       config.consumer_secret = "PSA8VmqOpe8tyWDf0h1k4LMl4wxAMwYcVbnmZvlNvmf4YzkETF"
  #       config.access_token = "3232294823-yb5Hq4y9vC7kUMZnFOxryKxH0m5ibNjaJ9KlxLs"
  #       config.access_token_secret = "17atRKApfrLgVeHP76gC96ADSmc1wtQvvQlYanImeuoz0"
  #   end
  #   stat = Time.now
  #   client.sample(language:"en") do |object|
  #     if object.is_a?(Twitter::Tweet)
  #       text = object.text.downcase.split
  #       time = Time.now
  #       text.each do |word|
  #         if all_letters(word)
  #           keyword = Keyword.find_by(word:word)
  #           if keyword
  #            keyword.tweets.create(tText:text,tTime:time)
  #           else
  #             keyword = Keyword.create(word:word)
  #             keyword.tweets.create(tText:text,tTime:time)
  #           end
  #         end
  #       end
  #     end
  #     break if Time.now > (stat + 10.minutes)
  #   end
  # end

end
