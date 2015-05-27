module WelcomeHelper
  
  @@company_hash
  @@stock_name_hash
  def set_up_company
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

  def set_up_stock
    @@stock_name_hash = Hash.new
    @@stock_name_hash["apple"] = "aapl"
    @@stock_name_hash["microsoft"] = 
    @@stock_name_hash["google"] = 
    @@stock_name_hash["netflix"] = "nflx"
    @@stock_name_hash["tesla"] = "tsla"
    @@stock_name_hash["amazon"] = "amzn"
    @@stock_name_hash["sony"] = "sne"
    @@stock_name_hash["samsung"] = "ssnlf"
    @@stock_name_hash["nintendo"] = "ntdoy"
    @@stock_name_hash["disney"] = "dis"
    @@stock_name_hash["yum"] = "yum"
    @@stock_name_hash["mcdonalds"] = "mcd"
    @@stock_name_hash["pepsi"] = "pep"
    @@stock_name_hash["intel"] = "intc"
    @@stock_name_hash["jpmorgan"] = "jpm"
    @@stock_name_hash["nike"] = "nke"
    @@stock_name_hash["verizon"] = "vz"
    @@stock_name_hash["honda"] = "hmc"
    @@stock_name_hash["toyota"] = "tm"
    @@stock_name_hash["ibm"] = "ibm"
    @@stock_name_hash["cocacola"] = "ko"
    @@stock_name_hash["ge"] = "ge"
    @@stock_name_hash["boeing"] = "ba"
    @@stock_name_hash["hp"] = "hpq"
    @@stock_name_hash["kraft"] = "krft"
    @@stock_name_hash["nestle"] = "nesn"
    @@stock_name_hash["proctergamble"] = "pg"
    @@stock_name_hash["jnj"] = "jnj"
    @@stock_name_hash["kellogg"] = "k"
    @@stock_name_hash["unilever"] = "un"
    @@stock_name_hash["timewarner"] = "twx"
    @@stock_name_hash["cbs"] = "cbs"
    @@stock_name_hash["viacom"] = "via.b"
    @@stock_name_hash["newscorp"] = "foxa"
    @@stock_name_hash["amd"] = "amd"
    @@stock_name_hash["nvidia"] = "nvda"
    @@stock_name_hash["yahoo"] = "yhoo"
    @@stock_name_hash["sandisk"] = "sndk"
    @@stock_name_hash["texasinstruments"] = "txn"
    @@stock_name_hash["cisco"] = "csco"
    @@stock_name_hash["micron"] = "mu"
    @@stock_name_hash["pandora"] = "p"
    @@stock_name_hash["qualcomm"] = "qcom"
    @@stock_name_hash["citigroup"] = "c"
    @@stock_name_hash["expedia"] = "expe"
    @@stock_name_hash["bankofamerica"] = "bac"
    @@stock_name_hash["at&t"] = "t"
    @@stock_name_hash["chevron"] = "cvx"
    @@stock_name_hash["exxon"] = "xom"
    @@stock_name_hash["homedepot"] = "hd"
    @@stock_name_hash["pfizer"] = "pfe"
    @@stock_name_hash["unitedhealth"] = "unh"
    @@stock_name_hash["visa"] = "v"
    @@stock_name_hash["adobe"] = "adbe"
    @@stock_name_hash["aetna"] = "aet"
    @@stock_name_hash["americanairlines"] = "aal"
    @@stock_name_hash["apache"] = "apa"
    @@stock_name_hash["broadcom"] = "brcm"
    @@stock_name_hash["comcast"] = "cmcsa"
    @@stock_name_hash["dowchem"] = "dow"
    @@stock_name_hash["drpepper"] = "dps"
    @@stock_name_hash["ebay"] = "ebay"
    @@stock_name_hash["ea"] = "ea"
    @@stock_name_hash["facebook"] = "fb"
    @@stock_name_hash["gamestop"] = "gme"
    @@stock_name_hash["generalmill"] = "gis"
    @@stock_name_hash["halliburton"] = "hal"
    @@stock_name_hash["hasbro"] = "has"
    @@stock_name_hash["humana"] = "hum"
    @@stock_name_hash["intuit"] = "intu"
    @@stock_name_hash["juniper"] = "jnpr"
    @@stock_name_hash["macy"] = "m"
    @@stock_name_hash["martinmarietta"] = "mlm"
    @@stock_name_hash["mastercard"] = "ma"
    @@stock_name_hash["meadwestvaco"] = "mwv"
    @@stock_name_hash["mohawk"] = "mhk"
    @@stock_name_hash["monster"] = "mnst"
    @@stock_name_hash["motorola"] = "msi"
    @@stock_name_hash["oracle"] = "orcl"
    @@stock_name_hash["pnc"] = "pnc"
    @@stock_name_hash["priceline"] = "pcln"
    @@stock_name_hash["quest"] = "dgx"
    @@stock_name_hash["raytheon"] = "rtn"
    @@stock_name_hash["redhat"] = "rht"
    @@stock_name_hash["salesforce"] = "crm"
    @@stock_name_hash["skywork"] = "swks"
    @@stock_name_hash["starbucks"] = "sbux"
    @@stock_name_hash["target"] = "tgt"
    @@stock_name_hash["tripadvisor"] = "trip"
    @@stock_name_hash["underarmour"] = "ua"
    @@stock_name_hash["ups"] = "ups"
    @@stock_name_hash["walgreens"] = "wag"
    @@stock_name_hash["anthem"] = "wlp"
    @@stock_name_hash["wellsfargo"] = "wfc"
    @@stock_name_hash["westernunion"] = "wu"
    @@stock_name_hash["xerox"] = "xrx"
    @@stock_name_hash["wholefood"] = "wfm"
  end
end
