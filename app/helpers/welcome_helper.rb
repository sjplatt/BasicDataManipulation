module WelcomeHelper
  
  @@company_hash
  def set_up_company()
    @@company_hash = Hash.new
    @@company_hash["apple"] = ["apple","aapl","iphone","ipod","iwatch","itouch","mac", "macbook","osx","os x","itunes","ios","beats","imac","ipad","icloud", "tim cook","safari", "apple tv","5s"]
    @@company_hash["microsoft"] = ["microsoft","xbox","windows","surface","bill gates","skype","satya nadella","visual studio","bing","msn","microsoft office","powerpoint","excel","internet explorer","ie8","microsoft edge","outlook","kinect","onedrive","windows phone","msft","cortana"]

    @@company_hash["google"] = ["google","googl","youtube","gmail","goog","larry page","google+","nexus","android","google fiber" , "chromecast", "chromebook","chrome","recaptcha"]

    @@company_hash["netflix"] = ["netflix","house of cards","nflx","reed hastings","daredevil","orange is the new black","marco polo"]

    @@company_hash["tesla"] =  ["tesla","tsla","spacex","elon musk", "hybrid",
      "supercharger","powerwall"]

    @@company_hash["amazon"] = ["amazon","prime","amzn","s3","kindle","aws","echo","audible"]

    @@company_hash["sony"] = ["ps4","sony","bravia","playstation","sne","xperia"]

    @@company_hash["samsung"] = ["galaxy","s4","s5","s6","samsung","kwon oh-hyun","ssnlf"]

    @@company_hash["nintendo"] = ["ntdoy","nintendo","mario kart", "wii", "3ds", "ds", "brawl","smash","satoru iwata", "metroid", "starfox", "mario",
      "gamecube", "zelda","donkey kong"]

    @@company_hash["disney"] = ["disney","marvel","dis stock","star wars","avengers","pixar", "captain america","disneyland","disneyworld","a&e","espn"]

    @@company_hash["yum"] = ["yum brands","pizza hut","kfc","taco bell"]

    @@company_hash["mcdonalds"] = ["mcdonalds","mcd"]

    @@company_hash["pepsi"] = ["pepsi","pepsico","pep","doritos",
      "indra nooyi"]

    @@company_hash["intel"] = ["intel","INTC","2 in 1","i7","pentium"]

    @@company_hash["jpmorgan"] = ["jpmorgan","jpmorgan chase", "chase"]

    @@company_hash["nike"] = ["nike", "nke", "just do it"]

    @@company_hash["verizon"] = ["vz","verizon","fios","lowell mcadam"]

    @@company_hash["honda"] = ["honda","hmc","accord","acura","civic"]

    @@company_hash["toyota"] = ["toyota","tm stock","camry","prius","lexus","Akio Toyoda"]

    @@company_hash["ibm"] = ["ibm","ginni rometty","iseries","watson"]

    @@company_hash["cocacola"] = ["coca-cola","coke","ko stock","muhtar kent"]

    @@company_hash["ge"] = ["general electric","ge","nbc"]

    @@company_hash["boeing"] = ["boeing","ba stock","747","787","777"]

    @@company_hash["hp"] = ["hp","hpq","hewlett-packard","hewlett packard","meg whitman"]

    @@company_hash["kraft"] = ["kraft","kraft foods group","krft","john cahill"]

    @@company_hash["nestle"] = ["nestle","nesn","paul bulcke"]

    @@company_hash["proctergamble"] = ["procter & gamble","procter and gamble", "pg stock","alan lafley"]

    @@company_hash["jnj"] = ["johnson & johnson","johnson and johnson", "jnj","alex gorsky"]

    @@company_hash["kellogg"] = ["kellogg","k stock", "john bryant","kelloggs"]

    @@company_hash["unilever"] = ["unilever","un stock","paul polman"]

    @@company_hash["timewarner"] = ["time warner","twx","jeffrey bewkes"]

    @@company_hash["cbs"] = ["cbs","leslie moonves","showtime"]

    @@company_hash["viacom"] = ["viacom","via.b","philippe dauman"]

    @@company_hash["newscorp"] = ["21st century fox","fox","newscorp","foxa","rupert murdoch",
      "20th century fox","searchlight pictures"]

    @@company_hash["amd"] = ["amd","advanced micro devices", "radeon","firepro", "lisa su"]

    @@company_hash["nvidia"] = ["nvidia","nvda","jen-hsun huang","geforce","gtx"]
    
    @@company_hash["yahoo"] = ["yahoo","yahoo!","yhoo","marissa mayer"]
     
    @@company_hash["sandisk"] = ["sandisk","sndk"]
    
    @@company_hash["texasinstruments"] = ["texas instruments","ti","txn"]
    
    @@company_hash["cisco"] = ["cisco","cisco systems","csco"]
     
    @@company_hash["micron"] = ["micron","mu stock", "micron technology"]
    
    @@company_hash["pandora"] = ["internet radio", "pandora", "p stock", "brian mcandrews"]
  
    @@company_hash["qualcomm"] = ["qualcomm","qcom","steven mollenkopf"]
   
    @@company_hash["citigroup"] = ["citigroup","c stock", "michael corbat"]
    
    @@company_hash["expedia"] = ["expedia", "expe","richard barton","hotwire"]
     
    @@company_hash["bankofamerica"] = ["bank of america", "bac stock"]
   
    @@company_hash["at&t"] = ["at&t","at and t","t stock"]
    
    @@company_hash["chevron"] = ["chevron","cvx"]
    
    @@company_hash["exxon"] = ["exxon", "exxon mobile", "xom"]
   
    @@company_hash["homedepot"] = ["home depot"]
     
    @@company_hash["pfizer"] = ["pfizer","pfe","ian read"]
  
    @@company_hash["unitedhealth"] = ["united health", "unitedhealth","unh"]
    
    @@company_hash["visa"] = ["visa","v stock"]
    
    @@company_hash["adobe"] = ["adobe","adbe","adobe systems"]
   
    @@company_hash["aetna"] = ["aetna","aet"]
   
    @@company_hash["americanairlines"] = ["american airlines", "aal"]
    
    @@company_hash["apache"] = ["apache corporation","apa stock"]
    
    @@company_hash["broadcom"] = ["broadcom","brcm"]
   
    @@company_hash["comcast"] = ["comcast","cmcsa"]
 
    @@company_hash["dowchem"] = ["dow chemical", "dow stock"]
    
    @@company_hash["drpepper"] = ["dr pepper","snapple", "dps stock"]
   
    @@company_hash["ebay"] = ["ebay","paypal"]
   
    @@company_hash["ea"] = ["electronic arts", "ea"]
   
    @@company_hash["facebook"] = ["facebook stock","fb stock"]
    
    @@company_hash["gamestop"] = ["gamestop", "gme stock"]
    
    @@company_hash["generalmill"] = ["general mills", "gis stock"]
 
    @@company_hash["halliburton"] = ["halliburton", "hal stock"]

    @@company_hash["hasbro"] = ["hasbro", "has stock"]
   
    @@company_hash["hospira"] = ["hospira", "hsp stock"]
   
    @@company_hash["humana"] = ["humana", "hum stock"]
    
    @@company_hash["intuit"] = ["intuit", "intu"]
    
    @@company_hash["juniper"] = ["juniper networks","jnpr"]
   
    @@company_hash["macy"] = ["macy", "macy's", "m stock"]
    
    @@company_hash["martinmarietta"] = ["martin narietta","mlm stock"]

    @@company_hash["mastercard"] = ["mastercard", "ma stock"]
  
    @@company_hash["meadwestvaco"] = ["meadwestvaco","mwv stock"]
  
    @@company_hash["mohawk"] = ["mohawk industries", "mhk stock"]
   
    @@company_hash["monster"] = ["monster beverage","mnst"]
   
    @@company_hash["motorola"] = ["motorola", "msi stock"]
  
    @@company_hash["oracle"] = ["oracle","orcl", "oracle corporation"]
     
    @@company_hash["pnc"] = ["pnc stock"]
     
    @@company_hash["priceline"] = ["priceline", "pcln"]
  
    @@company_hash["quest"] = ["quest diagnostics", "dgx stock"]
  
    @@company_hash["raytheon"] = ["raytheon", "rtn stock"]

    @@company_hash["redhat"] = ["Red Hat", "rht stock"]
    
    @@company_hash["salesforce"] = ["salesforce", "salesforce.com","crm stock"]
    
    @@company_hash["skywork"] = ["skyworks", "swks"]
    
    @@company_hash["starbucks"] = ["starbucks" ,"sbux"]
    
    @@company_hash["target"] = ["target corporation", "tgt stock"]
   
    @@company_hash["tripadvisor"] = ["tripadvisor", "trip stock"]
  
    @@company_hash["underarmour"] = ["under armour", "ua stock"]
   
    @@company_hash["ups"] = ["ups stock"]
  
    @@company_hash["walgreens"] = ["walgreens", "wag stock"]
  
    @@company_hash["anthem"] = ["anthem inc", "wellpoint", "wlp stock"]
   
    @@company_hash["wellsfargo"] = ["wells fargo", "wfc stock"]
   
    @@company_hash["westernunion"] = ["western union", "wu stock"]
   
    @@company_hash["xerox"] = ["xerox", "xrx stock"]
   
    @@company_hash["wholefood"] = ["whole foods", "wfm stock"]
  end
end
