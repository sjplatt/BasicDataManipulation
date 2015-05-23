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

  def mostCommon
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
