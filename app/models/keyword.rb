require 'tweetstream'
class Keyword < ActiveRecord::Base
  has_many :tweets
  @@query_array = ["apple","aapl","iphone","ipod","iwatch","itouch","mac",
"macbook","osx","os x","itunes","ios","beats","imac","ipad","icloud","tim cook","safari", "apple tv","5s","microsoft","xbox","windows","surface","bill gates","skype","satya nadella","visual studio","bing","msn","microsoft office","powerpoint","excel","internet explorer","ie8","microsoft edge","outlook","kinect","onedrive","windows phone","msft","cortana","google","googl","youtube","gmail","goog","larry page", "google+", "nexus", "android","google fiber","chromecast","chromebook","chrome","recaptcha","netflix","house of cards","nflx","reed hastings","daredevil","orange is the new black","marco polo","tesla","tsla","spacex","elon musk", "hybrid", "supercharger","powerwall","amazon","prime","amzn","s3","kindle","aws","echo", "audible","ps4","sony","bravia","playstation","sne","xperia","galaxy","s4","s5","s6","league of legends","samsung","kwon oh-hyun","ssnlf","ntdoy","nintendo","mario kart", "wii", "3ds", "ds", "brawl","smash","satoru iwata", "metroid", "starfox", "mario", "gamecube", "zelda","donkey kong","disney","marvel","dis","star wars","avengers","pixar", "captain america","disneyland","disneyworld","a&e","abc","espn","yum brands","yum","pizza hut","kfc","taco bell"]

  @@black_list = ["#iphonegames","#gameinsight"]

  def blacklist_method(str)
    ApplicationHelper::Blacklist.include?(str)
  end 

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
    count = 0
    stat = Time.now
    TweetStream::Client.new.track(@@query_array, query_parameters = {
     :language => "en"}) do |status|
        if status.is_a?(Twitter::Tweet)
          text = status.text.downcase.split
          time = Time.now
          count+=1
          puts status.text
          (text&@@query_array).each do |match|
            keyword = Keyword.find_by(word:match)
            if keyword
              keyword.tweets.create(tText:text,tTime:time)
            else
              keyword = Keyword.create(word:match)
              keyword.tweets.create(tText:text,tTime:time)
            end
          end
        end
     break if Time.now > (stat + 1.minutes)
    end
    # TweetStream::Client.new.sample(language: "en") do |status,client|
    #   if status.text.downcase.split.include?("stock")
    #     count+=1
    #     puts status.text
    #   end
    #   #sputs "test?"
    #   break if Time.now >(stat+1.minutes)
    # end 
    puts count
  end

  def get_tweets2
    TweetStream.configure do |config|
      config.consumer_key       = 'CwD4x6n4BeSXkXDoMfTCwr8xg'
      config.consumer_secret    = 'PSA8VmqOpe8tyWDf0h1k4LMl4wxAMwYcVbnmZvlNvmf4YzkETF'
      config.oauth_token        = '3232294823-yb5Hq4y9vC7kUMZnFOxryKxH0m5ibNjaJ9KlxLs'
      config.oauth_token_secret = '17atRKApfrLgVeHP76gC96ADSmc1wtQvvQlYanImeuoz0'
      config.auth_method        = :oauth
    end
    stat = Time.now
    TweetStream::Client.new.sample(language: "en") do |status,client|
      #puts status.class
      if status.is_a?(Twitter::Tweet)
        #puts status.text
        #puts stat.inspect + Time.now.inspect
        text = status.text.downcase.split
        time = Time.now
        text.each do |word|
          if all_letters(word) && !blacklist_method(word)
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
      break if Time.now > (stat + 1.minutes)
      #break if stat>=20
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
