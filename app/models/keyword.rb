require 'tweetstream'
class Keyword < ActiveRecord::Base
  has_many :tweets
  
  @@query_array = []

  @@black_list = ["#iphonegames","#gameinsight"]

  @@blacklist_count = 0

  def union()
    apple = ["apple","aapl","iphone","ipod","iwatch","itouch","mac",
      "macbook","osx","os x","itunes","ios","beats","imac","ipad","icloud",
      "tim cook","safari", "apple tv","5s"]

    microsoft = ["microsoft","xbox","windows","surface","bill gates","skype","satya nadella","visual studio","bing","msn","microsoft office","powerpoint","excel","internet explorer","ie8","microsoft edge","outlook","kinect","onedrive","windows phone","msft","cortana"]

    google = ["google","googl","youtube","gmail","goog","larry page","google+","nexus","android","google fiber" , "chromecast", "chromebook","chrome","recaptcha"]

    netflix = ["netflix","house of cards","nflx","reed hastings",
      "daredevil","orange is the new black","marco polo"]

    tesla = ["tesla","tsla","spacex","elon musk", "hybrid", 
      "supercharger","powerwall"]

    amazon = ["amazon","prime","amzn","s3","kindle","aws","echo",
      "audible"]

    sony = ["ps4","sony","bravia","playstation","sne","xperia"]

    samsung = ["galaxy","s4","s5","s6","samsung","kwon oh-hyun",
      "ssnlf"]

    nintendo = ["ntdoy","nintendo","mario kart", "wii", "3ds", "ds", "brawl","smash","satoru iwata", "metroid", "starfox", "mario",
      "gamecube", "zelda","donkey kong"]

    disney = ["disney","marvel","dis stock","star wars","avengers","pixar", "captain america","disneyland","disneyworld","a&e","espn"]

    yum = ["yum brands","pizza hut","kfc","taco bell"]

    mcdonalds = ["mcdonalds","mcd"]

    pepsi = ["pepsi","pepsico","pep","doritos","indra nooyi"]

    intel = ["intel","INTC","2 in 1","i7","pentium"]

    jpmorgan = ["jpmorgan","jpmorgan chase", "chase"]

    nike = ["nike", "nke", "just do it"]

    verizon = ["vz","verizon","fios","lowell mcadam"]

    honda = ["honda","hmc","accord","acura","civic"]

    toyota = ["toyota","tm stock","camry","prius","lexus","Akio Toyoda"]

    ibm = ["ibm","ginni rometty","iseries","watson"]

    cocacola = ["coca-cola","coke","ko stock","muhtar kent"]

    ge = ["general electric","ge","nbc"]

    boeing = ["boeing","ba stock","747","787","777"]

    hp = ["hp","hpq","hewlett-packard","hewlett packard","meg whitman"]

    kraft = ["kraft","kraft foods group","krft","john cahill"]

    nestle = ["nestle","nesn","paul bulcke"]

    proctergamble = ["procter & gamble","procter and gamble", 
    "pg stock","alan lafley"]

    jnj = ["johnson & johnson","johnson and johnson", "jnj","alex gorsky"]

    kellogg = ["kellogg","k stock", "john bryant","kelloggs"]

    unilever = ["unilever","un stock","paul polman"]

    timewarner = ["time warner","twx","jeffrey bewkes"]

    cbs = ["cbs","leslie moonves","showtime"]

    viacom = ["viacom","via.b","philippe dauman"]

    newscorp = ["21st century fox","fox","newscorp","foxa","rupert murdoch",
      "20th century fox","searchlight pictures"]

    amd = ["amd","advanced micro devices", "radeon","firepro", "lisa su"]

    nvidia = ["nvidia","nvda","jen-hsun huang","geforce","gtx"]
    
    yahoo = ["yahoo","yahoo!","yhoo","marissa mayer"]
     
    sandisk = ["sandisk","sndk"]
    
    texasinstruments = ["texas instruments","ti","txn"]
    
    cisco = ["cisco","cisco systems","csco"]
     
    micron = ["micron","mu stock", "micron technology"]
    
    pandora = ["internet radio", "pandora", "p stock", "brian mcandrews"]
  
    qualcomm = ["qualcomm","qcom","steven mollenkopf"]
   
    citigroup = ["citigroup","c stock", "michael corbat"]
    
    expedia = ["expedia", "expe","richard barton","hotwire"]
     
    bankofamerica = ["bank of america", "bac stock"]
   
    atandt = ["at&t","at and t","t stock"]
    
    chevron = ["chevron","cvx"]
    
    exxon = ["exxon", "exxon mobile", "xom"]
   
    homedepot = ["home depot"]
     
    pfizer = ["pfizer","pfe","ian read"]
    
    unitedhealth = ["united health", "unitedhealth","unh"]
    
    visa = ["visa","v stock"]
    
    adobe = ["adobe","adbe","adobe systems"]
   
    aetna = ["aetna","aet"]
   
    americanairlines = ["american airlines", "aal"]
    
    apache = ["apache corporation","apa stock"]
    
    broadcom = ["broadcom","brcm"]
   
    comcast = ["comcast","cmcsa"]
 
    dowchem = ["dow chemical", "dow stock"]
    
    drpepper = ["dr pepper","snapple", "dps stock"]
   
    ebay = ["ebay","paypal"]
   
    ea = ["electronic arts", "ea"]
   
    facebook = ["facebook stock","fb stock"]
    
    gamestop = ["gamestop", "gme stock"]
    
    generalmill = ["general mills", "gis stock"]
 
    halliburton = ["halliburton", "hal stock"]

    hasbro = ["hasbro", "has stock"]
   
    hospira = ["hospira", "hsp stock"]
   
    humana = ["humana", "hum stock"]
    
    intuit = ["intuit", "intu"]
    
    juniper = ["juniper networks","jnpr"]
   
    macy = ["macy", "macy's", "m stock"]
    
    martinmarietta = ["martin narietta","mlm stock"]

    mastercard = ["mastercard", "ma stock"]
  
    meadwestvaco = ["meadwestvaco","mwv stock"]
  
    mohawk = ["mohawk industries", "mhk stock"]
   
    monster = ["monster beverage","mnst"]
   
    motorola = ["motorola", "msi stock"]
  
    oracle = ["oracle","orcl", "oracle corporation"]
     
    pnc = ["pnc stock"]
     
    priceline = ["priceline", "pcln"]
  
    quest = ["quest diagnostics", "dgx stock"]
  
    raytheon = ["raytheon", "rtn stock"]

    redhat = ["Red Hat", "rht stock"]
    
    salesforce = ["salesforce", "salesforce.com","crm stock"]
    
    skywork = ["skyworks", "swks"]
    
    starbucks = ["starbucks" ,"sbux"]
    
    target = ["target corporation", "tgt stock"]
   
    tripadvisor = ["tripadvisor", "trip stock"]
  
    underarmour = ["under armour", "ua stock"]
   
    ups = ["ups stock"]
  
    walgreens = ["walgreens", "wag stock"]
  
    anthem = ["anthem inc", "wellpoint", "wlp stock"]
   
    wellsfargo = ["wells fargo", "wfc stock"]
   
    westernunion = ["western union", "wu stock"]
   
    xerox = ["xerox", "xrx stock"]
   
    wholefood = ["whole foods", "wfm stock"]
    
    @@query_array = apple|microsoft|google|netflix|tesla|amazon|sony|samsung|nintendo|disney|yum|mcdonalds|pepsi|intel|jpmorgan|nike|verizon|honda|
      toyota|ibm|cocacola|ge|boeing|hp|kraft|nestle|proctergamble|jnj|kellogg|unilever|timewarner|cbs|viacom|newscorp|amd|nvidia|yahoo|sandisk|
        texasinstruments|cisco|micron|pandora|qualcomm|citigroup|expedia|
        bankofamerica|atandt|chevron|exxon|homedepot|pfizer|unitedhealth|
        visa|adobe|aetna|americanairlines|apache|broadcom|comcast|dowchem|
        drpepper|ebay|ea|facebook|gamestop|generalmill|halliburton|hasbro|
        hospira|humana|intuit|juniper|macy|mastercard|meadwestvaco|mohawk|
        monster|motorola|oracle|pnc|priceline|quest|raytheon|redhat|
        salesforce|skywork|starbucks|target|tripadvisor|underarmour|ups|
        walgreens|anthem|wellsfargo|westernunion|xerox|wholefood
        #puts @@query_array.length
  end 
  def configure_twitter()
    union()
    TweetStream.configure do |config|
      config.consumer_key       = 'CwD4x6n4BeSXkXDoMfTCwr8xg'
      config.consumer_secret    = 'PSA8VmqOpe8tyWDf0h1k4LMl4wxAMwYcVbnmZvlNvmf4YzkETF'
      config.oauth_token        = '3232294823-yb5Hq4y9vC7kUMZnFOxryKxH0m5ibNjaJ9KlxLs'
      config.oauth_token_secret = '17atRKApfrLgVeHP76gC96ADSmc1wtQvvQlYanImeuoz0'
      config.auth_method        = :oauth
    end
  end

  #def blacklist_method(str)
  #  ApplicationHelper::Blacklist.include?(str)
  #end 
  def blacklist_filter?(str)
    @@black_list.each do |badword|
      if str.include?(badword)
        @@blacklist_count+=1
        return false
      end
    end
    true
  end 

  def all_letters?(str)
    str[/[a-zA-Z]+/]  == str
  end

  def keyword_for_tweet(str)
    str = str.map(&:downcase)
    solution = []
    if !blacklist_filter?(str)
      return solution
    end
    @@query_array.each do |word|
      if ((word.split)&(str) == (word.split))
        solution << word
      end
    end
    solution
  end

  def get_tweets
    configure_twitter()
    count = 0
    stat = Time.now
    TweetStream::Client.new.track(@@query_array, query_parameters = {
     :language => "en"}) do |status|
        if status.is_a?(Twitter::Tweet)
          text = status.text.downcase.split
          time = Time.now
          count+=1
          keyword_for_tweet(text).each do |match|
            #puts status.text
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
    puts "Number of tweets : " + count.inspect
    puts "Number blacklisted : " + @@blacklist_count.inspect
  end

  # def get_tweets2
  #   TweetStream.configure do |config|
  #     config.consumer_key       = 'CwD4x6n4BeSXkXDoMfTCwr8xg'
  #     config.consumer_secret    = 'PSA8VmqOpe8tyWDf0h1k4LMl4wxAMwYcVbnmZvlNvmf4YzkETF'
  #     config.oauth_token        = '3232294823-yb5Hq4y9vC7kUMZnFOxryKxH0m5ibNjaJ9KlxLs'
  #     config.oauth_token_secret = '17atRKApfrLgVeHP76gC96ADSmc1wtQvvQlYanImeuoz0'
  #     config.auth_method        = :oauth
  #   end
  #   stat = Time.now
  #   TweetStream::Client.new.sample(language: "en") do |status,client|
  #     #puts status.class
  #     if status.is_a?(Twitter::Tweet)
  #       #puts status.text
  #       #puts stat.inspect + Time.now.inspect
  #       text = status.text.downcase.split
  #       time = Time.now
  #       text.each do |word|
  #         if all_letters(word) && !blacklist_method(word)
  #           keyword = Keyword.find_by(word:word)
  #           if keyword
  #             keyword.tweets.create(tText:text,tTime:time)
  #           else
  #             keyword = Keyword.create(word:word)
  #             keyword.tweets.create(tText:text,tTime:time)
  #           end
  #         end
  #       end
  #     end
  #     break if Time.now > (stat + 1.minutes)
  #     #break if stat>=20
  #   end
  # end
  #
  #
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
