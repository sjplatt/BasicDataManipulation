class WelcomeController < ApplicationController
  
  def index
    @data_transfer = DataTransfer.new
  end

  def viewData
    keyword = params[:data_transfer][:keyword].downcase
    @display = keyword
    keywordDB = Keyword.find_by(word:keyword)
    @count = 0
    @time_array = []
    if keywordDB 
      @count = keywordDB.tweets.count
      start = keywordDB.tweets.first.tTime
      keywordDB.tweets.each do |tweet|
        dif = (((tweet.tTime-start)/60)/15).floor
        if @time_array[dif]
          @time_array[dif] +=1
        else @time_array[dif] = 1
        end
      end
    end
    render 'welcome/viewdata'
  end

  def most_common_word
    #this will be your output array. Please talk with whoever is doing
    # #4 for more details. 
    @word_array = []

    #Basic parameter to make sure post is working
    @keyword = params[:most_common_word][:keyword]

    #This is the passed in keyword you will work with
    keyword = params[:most_common_word][:keyword].downcase
    keywordDB = Keyword.find_by(word:keyword)

    #If the keyword is valid, we will loop through tweets.
    if keywordDB
      keywordDB.tweets.each do |tweet|
        #NOTE: tweet.tTime is the time it was created. 
  #      tweet.tText is the tweets text as an array of words.
  #      tweet.keyword_id is its keyword id(if you need)
        #This is where the processing will happen
      end
    end

  end

  def stock_analysis
    #this will be your output array. Please talk with whoever is doing
    # #4 for more details. 
    @word_array = []

    #Basic parameter to make sure post is working
    @keyword = params[:stocks][:keyword]

    #This is the passed in keyword you will work with
    keyword = params[:stocks][:keyword].downcase
    keywordDB = Keyword.find_by(word:keyword)

    #If the keyword is valid, we will loop through tweets.
    if keywordDB
      keywordDB.tweets.each do |tweet|
        #This is where the processing will happen
         #NOTE: tweet.tTime is the time it was created. 
  #      tweet.tText is the tweets text as an array of words.
  #      tweet.keyword_id is its keyword id(if you need)
      end
    end

    #you will also need to get stock data somehow and store it for
    #display in the view
  end

  def most_popular
    @word_array = ["Default"]
    @count_array = [1]
    allKeywords = Keyword.all
    allKeywords.each do |keyword|
      if keyword && keyword.word
          @word_array << keyword.word
          @count_array << keyword.tweets.count
      end
    end 
    @count_array,@word_array = @count_array.zip(@word_array)
      .sort.reverse.transpose
    #render 'welcome/mostcommon'
  end

  def getData
    @data_transfer = DataTransfer.new
    k = Keyword.new
    k.save
    k.delay.get_tweets
    #k.destroy
    render 'welcome/index'
  end
end
