class WelcomeController < ApplicationController
  
  def index
    @data_transfer = DataTransfer.new
  end

  def viewData
    keyword = params[:data_transfer][:keyword].downcase
    @display = keyword
    keywordDB = Keyword.find_by(word:keyword)
    @count = 0
    if keywordDB 
      @count = keywordDB.tweets.count
    end

    start = keywordDB.tweets.first.tTime
    @time_array = []
    keywordDB.tweets.each do |tweet|
      dif = (((tweet.tTime-start)/60)/15).floor
      if @time_array[dif]
        @time_array[dif] +=1
      else @time_array[dif] = 1
      end
    end
    render 'welcome/viewdata'
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
