local consequence_trade = require("npc.base.consequence.trade")
local condition_language = require("npc.base.condition.language")
local consequence_state = require("npc.base.consequence.state")
local basic = require("npc.base.basic")
local trade = require("npc.base.trade")
local talk = require("npc.base.talk")
local consequence_inform = require("npc.base.consequence.inform")
local function initNpc()
local mainNPC = basic()
mainNPC:setAffiliation(3)
local talkingNPC = talk(mainNPC)
local tradingNPC = trade(mainNPC)
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Help")
talkEntry:addConsequence(consequence_inform("[Game Help] This NPC is Sogg Beermug the Alchemist. Keywords: buy, sell, trade, occupation, Runewick, Galmair, Cadomyr"))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Help? All ob us need help!...'hic'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hilfe")
talkEntry:addConsequence(consequence_inform("[Spielhilfe] Dieser NPC ist Sogg Beermug der Alchimist. Schlüsselwörter: kaufe, verkaufe, Handel, Beruf, Runewick, Galmair, Cadomyr"))
talkEntry:addConsequence(consequence_state("=", 0))
talkEntry:addResponse("Hilfe brauschn wir alle!...'hick'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sell")
talkEntry:addTrigger("buy")
talkEntry:addTrigger("wares")
talkEntry:addTrigger("price")
talkEntry:addTrigger("trade")
talkEntry:addTrigger("purchase")
talkEntry:addResponse("Me sell all herbs and barrels. Uh... wait. - Nubba you can't buy a barrel. But all things needed to brew! Hurr hurr.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kauf")
talkEntry:addTrigger("waren")
talkEntry:addTrigger("preis")
talkEntry:addTrigger("Handel")
talkEntry:addTrigger("veräußer")
talkEntry:addTrigger("veräusser")
talkEntry:addTrigger("erwerb")
talkEntry:addResponse("Isch verkauf Kräuter und Fässa. Uh... wart mal. - Nubba die Fässa kann man nischt kaufen. Aber alles Zeug zum Brauen! Hehe.")
talkEntry:addConsequence(consequence_trade(tradingNPC))
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hello")
talkEntry:addTrigger("Greet")
talkEntry:addTrigger("Hail")
talkEntry:addTrigger("Good day")
talkEntry:addTrigger("Good morning")
talkEntry:addTrigger("Good evening")
talkEntry:addTrigger("Good night")
talkEntry:addResponse("Greebas!")
talkEntry:addResponse("Hurr! Greetings.")
talkEntry:addResponse("#me grunts and waves a mug of beer.")
talkEntry:addResponse("Skoal! Come over 'ere and drink with Sogg!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Grüß")
talkEntry:addTrigger("Gruß")
talkEntry:addTrigger("Grüss")
talkEntry:addTrigger("Gruss")
talkEntry:addTrigger("Guten Morgen")
talkEntry:addTrigger("Guten Tag")
talkEntry:addTrigger("Guten Abend")
talkEntry:addTrigger("Gute Nacht")
talkEntry:addTrigger("Mahlzeit")
talkEntry:addTrigger("Tach")
talkEntry:addTrigger("Moin")
talkEntry:addTrigger("Mohltied")
talkEntry:addResponse("Greebas!")
talkEntry:addResponse("Hurr! Grüße.")
talkEntry:addResponse("#me grunzt und winkt mit einem Krug Bier.")
talkEntry:addResponse("Prost! Kommst du her, und trinkst mit Sogg!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greebas!")
talkEntry:addResponse("Hurr! Greetings.")
talkEntry:addResponse("#me grunts and waves a mug of beer.")
talkEntry:addResponse("Skoal! Come over 'ere and drink with Sogg!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hiho")
talkEntry:addTrigger("Hallo")
talkEntry:addTrigger("Hey")
talkEntry:addTrigger("Greeb")
talkEntry:addResponse("Greebas!")
talkEntry:addResponse("Hurr! Grüße.")
talkEntry:addResponse("#me grunzt und winkt mit einem Krug Bier.")
talkEntry:addResponse("Prost! Kommst du her, und trinkst mit Sogg!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Farewell")
talkEntry:addTrigger("Bye")
talkEntry:addTrigger("Fare well")
talkEntry:addTrigger("See you")
talkEntry:addResponse("Farebaaaa...!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Tschüß")
talkEntry:addTrigger("Tschüss")
talkEntry:addTrigger("Wiedersehen")
talkEntry:addTrigger("Gehab wohl")
talkEntry:addResponse("Farebaaaa...!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farebaaaa...!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Ciao")
talkEntry:addTrigger("Adieu")
talkEntry:addTrigger("Au revoir")
talkEntry:addTrigger("Farebba")
talkEntry:addResponse("Farebaaaa...!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("How are you")
talkEntry:addTrigger("How feel")
talkEntry:addTrigger("How do you do")
talkEntry:addResponse("Mes just a little bitty drunky...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Wie geht")
talkEntry:addTrigger("Wie fühlst")
talkEntry:addTrigger("Wie ist es ergangen")
talkEntry:addTrigger("Wie Befind")
talkEntry:addResponse("Mirr nur kleinig bisschen bertrunkchen...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("your name")
talkEntry:addTrigger("who are you")
talkEntry:addTrigger("who art thou")
talkEntry:addResponse("I'm Sogg Beermug. 'hic' Mes guarding tha barrels an' bottles! Uh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ihr name")
talkEntry:addTrigger("dein name")
talkEntry:addTrigger("wer bist du")
talkEntry:addTrigger("wer seid ihr")
talkEntry:addTrigger("wie heißt")
talkEntry:addTrigger("wie heisst")
talkEntry:addResponse("Isch bin Sogg Beermug. 'hick' Mirr bewacht all die Fässer und Flasch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("I havn't any tashks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("quest")
talkEntry:addTrigger("mission")
talkEntry:addResponse("Isch abe kene Aufgabn für disch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("task")
talkEntry:addTrigger("adventure")
talkEntry:addTrigger("order")
talkEntry:addResponse("I havn't any tashks for you.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Auftrag")
talkEntry:addTrigger("Aufgabe")
talkEntry:addTrigger("Abenteuer")
talkEntry:addTrigger("Befehl")
talkEntry:addResponse("Isch abe kene Aufgabn für disch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("profession")
talkEntry:addTrigger("occupation")
talkEntry:addResponse("I'm Sogg Beermug. 'hic' Mes guarding tha barrels an' bottles! Uh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("beruf")
talkEntry:addResponse("Isch bin Sogg Beermug. 'hick' Mirr bewacht all die Fässer und Flasch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("job")
talkEntry:addResponse("I'm Sogg Beermug. 'hic' Mes guarding tha barrels an' bottles! Uh!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("job")
talkEntry:addResponse("Isch bin Sogg Beermug. 'hick' Mirr bewacht all die Fässer und Flasch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("I don' know some Gobiaths! But my granny was named Gobthe. Eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gobaith")
talkEntry:addTrigger("Gobiath")
talkEntry:addResponse("Isch kenne keinen Gobiath! Aba mine Oma hiesch Gobthe. Ehj?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("my name")
talkEntry:addResponse("Yuu, mes like you! Wan' some booze?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("mein Name")
talkEntry:addResponse("Duhu, mirr dich mögen! Willschte wa' zu saufn?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("murgo")
talkEntry:addResponse("Yubba... - Murgo is no good fella. He's always roaming the streets and his woman, Krudash, doesn't like it. *hic*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("murgo")
talkEntry:addResponse("Yubba... - Murgo ischn fener Kerl. Treibt sich aber imma rum, scheiner Frau der Krudash... gefällt dasch gar nich. *hick*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("er hja")
talkEntry:addTrigger("erhja")
talkEntry:addTrigger("er'hja")
talkEntry:addResponse("Eh, Er'hja? She's daughter of Murgo 'nd Krudash. She's a good orcling, mes say. Hu, 'er parents be good friends ob mine!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("er hja")
talkEntry:addTrigger("erhja")
talkEntry:addTrigger("er'hja")
talkEntry:addResponse("Eh, Er'hja? Sie's Tochta von Murgo 'nd Krudash. Ne feine Orkling, würd isch sage. Hu, die Eltern sin 'ute Freunde von misch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("ali[czs]")
talkEntry:addTrigger("ali[czs]e")
talkEntry:addTrigger("stout")
talkEntry:addTrigger("jack")
talkEntry:addTrigger("tom")
talkEntry:addTrigger("berry")
talkEntry:addTrigger("thomas")
talkEntry:addTrigger("berryard")
talkEntry:addResponse("Skeschmath! Don't annoy mes with this snagas. Meesh, Sogg! Meesh don't hang around with snagas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("ali[czs]")
talkEntry:addTrigger("ali[czs]e")
talkEntry:addTrigger("stout")
talkEntry:addTrigger("jack")
talkEntry:addTrigger("tom")
talkEntry:addTrigger("berry")
talkEntry:addTrigger("thomas")
talkEntry:addTrigger("berryard")
talkEntry:addResponse("Skeschmath! Nerv misch nich, mit diese Snagas. Isch bin Sogg! Misch gibt sich nicht ab mit Snagas.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("krudash")
talkEntry:addTrigger("Hack")
talkEntry:addTrigger("sack")
talkEntry:addResponse("Yûk. Krudash's shop, ish right there! 'Hack an Sack', good name for an arms dealer, ishn't it?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("krudash")
talkEntry:addTrigger("Hack")
talkEntry:addTrigger("sack")
talkEntry:addResponse("Yûk. Krudashs Laden, 'Hacken un Plündern' is gleich da drübn. Guter Name für'n Waffnladen, findesch du nich?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Hacken")
talkEntry:addTrigger("plündern")
talkEntry:addResponse("Yûk. Krudashs Laden, 'Hacken un Plündern' is gleich da drübn. Guter Name für'n Waffnladen, findesch du nich?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("morurt")
talkEntry:addTrigger("mo'rurt")
talkEntry:addTrigger("mor'urt")
talkEntry:addTrigger("olokwa")
talkEntry:addTrigger("thud")
talkEntry:addTrigger("grimlug")
talkEntry:addTrigger("ol hja")
talkEntry:addTrigger("olhja")
talkEntry:addTrigger("ol'hja")
talkEntry:addResponse("#me claps his chest with his left hand. 'Hurr, Sogg honour our clan!'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("morurt")
talkEntry:addTrigger("mo'rurt")
talkEntry:addTrigger("mor'urt")
talkEntry:addTrigger("olokwa")
talkEntry:addTrigger("thud")
talkEntry:addTrigger("grimlug")
talkEntry:addTrigger("ol hja")
talkEntry:addTrigger("olhja")
talkEntry:addTrigger("ol'hja")
talkEntry:addResponse("#me klopft sich mit der Faust schlecht gezielt auf die Brust. 'Hurr, Sogg steht zu scheinem Klan.'")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("archmage")
talkEntry:addResponse("Uh! Mes bet this Longear is under the table after two beers. Bah-Gosch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Erzmagier")
talkEntry:addResponse("Uh! Misch wettet, dieses Langbein kippt nach zwei Bier unterm Tisch! Bah-Gosch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Uh! Mes bet this Longear is under the table after two beers. Bah-Gosch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Elvaine")
talkEntry:addTrigger("Morgan")
talkEntry:addResponse("Uh! Misch wettet, dieses Langbein kippt nach zwei Bier unterm Tisch! Bah-Gosch!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Let mes tell 'ou... that beer in Runewick taste like piss.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Runewick")
talkEntry:addResponse("Lass dir sagn... dasch Bier in Runewick schmeckt wie Pisse.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Skoal! Let us drink for honour of the Don!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Valerio")
talkEntry:addTrigger("Guilianni")
talkEntry:addTrigger("Don")
talkEntry:addResponse("Prost! Lasch uns zur Ehre des Dons trinken!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Yubba. Here's the best place! The dwarves brew the best beer. That's why I'm here! Taghta!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Galmair")
talkEntry:addResponse("Yubba. Hier isch esch am schönsten! Die Schwerge maschen dasch beschte Bier, drum bleib isch hier! Taghta!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Queen")
talkEntry:addResponse("Seems to me this Queen never tried sum Beans Booze. Othawise she wouldn't be so pigheaded. Wug-wug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Königin")
talkEntry:addResponse("Scheint mir... dische Könischin, hat noch nie 'n Bohnenschnaps getrunken. Schonst wär sie nich so verklemmt. Wug-wug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Seems to me this Queen never tried sum Beans Booze. Othawise she wouldn't be so pigheaded. Wug-wug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("rosaline")
talkEntry:addTrigger("edwards")
talkEntry:addResponse("Scheint mir... dische Könischin, hat noch nie 'n Bohnenschnaps getrunken. Schonst wär sie nich so verklemmt. Wug-wug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("In Cadomyr, they may have good-looking warriors, but for sure we will able to drink the most booze! Gosch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Cadomyr")
talkEntry:addResponse("In Cadomyr, da wolln schie ja ornliche Kämpfer sein, aber unterm Tisch saufn tun wir sie trotzdem alle! Gosch.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("albar")
talkEntry:addResponse("I donno care about them.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("albar")
talkEntry:addResponse("Wasch kümmern sche misch? Eh?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("gynk")
talkEntry:addTrigger("gync")
talkEntry:addResponse("Hurr-hurr! There's the besht Sibanac there.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("gync")
talkEntry:addTrigger("gynk")
talkEntry:addResponse("He-he! Dort gibtsch da' beschte Sibanac.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("salkama")
talkEntry:addResponse("I heard in Salkamar the people piss into their beer to make it taste better. *laughs*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("salkama")
talkEntry:addResponse("Isch hab gehört, in Salkamar, pissen schie ins Bier, damits bescher schmeckt. *gluckst lachend*")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("wo .* her")
talkEntry:addResponse("Kroch'Gurak! Ist, wo meißte Orks von uns komme her von.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("where .* com")
talkEntry:addResponse("Kroch'Gurak! Is where most ob us orcs come from.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("kroch")
talkEntry:addTrigger("gurak")
talkEntry:addTrigger("Kroch'gurak")
talkEntry:addResponse("Kroch'Gurak! Is where most ob us orcs come from.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("kroch")
talkEntry:addTrigger("gurak")
talkEntry:addTrigger("Kroch'gurak")
talkEntry:addResponse("Kroch'Gurak! Ist, wo meiste Orks von uns komme her von.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("god")
talkEntry:addResponse("Me praise Adron! 'nd mes Ancestors for shure!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("Gott")
talkEntry:addTrigger("Götter")
talkEntry:addResponse("Ehre Adron! Und menen Vorfahren!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("moshran")
talkEntry:addResponse("Gosh! Nub say tha name! Bettu talk to Shaman about tha fatha.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("moshran")
talkEntry:addResponse("Gosh! Nicht sagst diese Name! Bessa fragen einen Schamanen über Vatha.")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("cherga")
talkEntry:addResponse("Hurr. Tha icy witch, be god ob ancestors. Ask Grimlug about her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("cherga")
talkEntry:addResponse("Hurr. Eisig Hexe, Göttin von Ahnen ist. Du fragst Grimlug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("icy witch")
talkEntry:addResponse("Hurr. Tha icy witch, be god ob ancestors. Ask Grimlug about her!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("eis Hex")
talkEntry:addResponse("Hurr. Eisig Hexe, Göttin von Ahnen ist. Du fragst Grimlug!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("adron")
talkEntry:addResponse("Honour to Adron, tha fat man with red nose! Yubba. May he help me, guarding all those barrels 'nd bottles!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("adron")
talkEntry:addResponse("Geerht sei Adron, der fette Mann mit roter Nase! Yubba. Möge er helfen, zu bewachen alle meine Flasch und Fässa!")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("tell something")
talkEntry:addResponse("#me glances around the area with dull eyes.")
talkEntry:addResponse("#me belches loudly.")
talkEntry:addResponse("Bean's Booze...")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("erzähl was")
talkEntry:addTrigger("erzähl etwas")
talkEntry:addResponse("#me rülpst herzhaft.")
talkEntry:addResponse("#me schmatzt und blickt sich mit trüben Augen um.")
talkEntry:addResponse("Bohn'nschnaps... ")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addCondition(condition_language("english"))
talkEntry:addTrigger("sogg")
talkEntry:addTrigger("beermug")
talkEntry:addResponse("Hurr-hurr... want a beer, eh?")
talkEntry:addResponse("Hu!?... - Mesch Sogg Beermug, whut do you want?")
talkingNPC:addTalkingEntry(talkEntry)
end
do
local talkEntry = talk.talkNPCEntry()
talkEntry:addTrigger("sogg")
talkEntry:addTrigger("beermug")
talkEntry:addResponse("Hurr-hurr... wilscht n' Bier, eh?")
talkEntry:addResponse("Hu!?... - Isch bin Sogg Beermug, wasch wollscht ihr von mir?")
talkingNPC:addTalkingEntry(talkEntry)
end
talkingNPC:addCycleText("#me schlägt ein Fass Bier an: 'O-zopft is!'", "#me taps another barrel with beer: 'O-zopft is!'")
talkingNPC:addCycleText("#me nimmt einen kräftigen Schluck aus seinem Krug.", "#me takes a swig out of his mug.")
talkingNPC:addCycleText("Booohnenschnäps!! Isch des Beschte!", "Beans Booooze!! Tha besht booze!")
talkingNPC:addCycleText("#me rülpst herzhaft.", "#me belches loudly.")
talkingNPC:addCycleText("#me füllt grinsed, abermals seinen Krug.", "#me grins as he refills his mug.")
talkingNPC:addCycleText("'hick...'", "'hick...'")
talkingNPC:addCycleText("'M-mirr bewach... bewach diese Fässa!", "M-me guard those barr'ls!")
talkingNPC:addCycleText("'Da-das 's mene Flasch!", "Tha-that 's my bottle!")
talkingNPC:addCycleText("#me macht einen konzentrierten Gesichtsausdruck, legt die Zunge zwischen die Lippen. Dann lässt er plötzlich einen melodiösen Wind fahren.", "#me pokes out his tongue in deep concentration. He then rips out a loud fart.")
talkingNPC:addCycleText("#me schnaubt ein wenig.", "#me snorts quietly.")
talkingNPC:addCycleText("#me rülpst, Duft von schalem Bier und gebratenen Fleisch entschwebt in die Nasen der Umgebung.", "#me burps, the scent of stale beer and roasted meat floats into the noses of anyone in the surrounding area.")
talkingNPC:addCycleText("Fokous! Bring mir ein neues Fass des feinen Gebräus!", "Fokous! Bring meh 'nother barrel ub ta finest brew!")
talkingNPC:addCycleText("Bring das Bier! Yubba, unser Bier darf nicht alle werden.", "Guard ta beer, stumpy! Yubba, yoo canna have our beer runnin' low!")
talkingNPC:addCycleText("Prost!", "Skoal!")
talkingNPC:addCycleText("Heut empfehl isch... Bohnenschnaps!", "Daily special... Bean's Booze!")
talkingNPC:addCycleText("Bier auf Wein, lasch das sein! Aber Wein auf Bier, das rat isch dier!", "Beer after Wine, is a no go. Better try Wine after Beer!")
tradingNPC:addItem(trade.tradeNPCItem(227,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(126,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(799,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(133,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(134,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(135,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(136,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(137,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(140,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(141,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(142,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(143,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(144,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(145,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(147,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(148,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(149,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(151,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(153,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(155,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(156,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(157,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(158,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(159,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(160,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(161,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(162,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(163,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(405,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(406,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(407,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(752,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(753,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(759,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(763,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(767,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2499,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2500,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2497,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(2501,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(785,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3720,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(787,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(791,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(786,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(788,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(517,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(783,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3721,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(784,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(789,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3722,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(3611,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(1316,"sell"))
tradingNPC:addItem(trade.tradeNPCItem(133,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(134,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(135,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(136,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(137,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(140,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(141,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(142,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(143,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(144,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(145,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(147,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(148,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(149,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(151,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(153,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(155,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(156,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(157,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(158,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(159,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(160,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(161,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(162,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(163,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(405,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(406,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(407,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(752,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(753,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(759,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(763,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(767,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(3787,"buyPrimary"))
tradingNPC:addItem(trade.tradeNPCItem(2499,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2500,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2497,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(2501,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(785,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3720,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(787,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(791,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(786,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(788,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(517,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(783,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3721,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(784,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(789,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3722,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(3611,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1316,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1315,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1320,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1321,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1322,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1319,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1323,"buySecondary"))
tradingNPC:addItem(trade.tradeNPCItem(1318,"buySecondary"))
tradingNPC:addNotEnoughMoneyMsg("Zu teuer!", "Too expensive!")
tradingNPC:addDialogClosedMsg("Whubeva.", "Whubeva.")
tradingNPC:addDialogClosedNoTradeMsg("Fareba!", "Fareba!")
tradingNPC:addWrongItemMsg("Nah.", "Nah.")
mainNPC:addLanguage(0)
mainNPC:addLanguage(5)
mainNPC:setDefaultLanguage(0)
mainNPC:setLookat("Ein schwankender Ork, mit tränenden Augen und roter Nase.", "A drunken orc with watery eyes and a red nose.")
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!")
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.")
mainNPC:setEquipment(3, 811)
mainNPC:setEquipment(9, 821)
mainNPC:setEquipment(10, 369)
mainNPC:setAutoIntroduceMode(true)

mainNPC:initDone()
return mainNPC
end
local mNPC = initNpc()
initNpc = nil
local M = {}
function M.receiveText(npcChar, texttype, message, speaker) mNPC:receiveText(npcChar, texttype, speaker, message) end
function M.nextCycle(npcChar) mNPC:nextCycle(npcChar) end
function M.lookAtNpc(npcChar, char, mode) mNPC:lookAt(npcChar, char, mode) end
function M.useNPC(npcChar, char, counter, param) mNPC:use(npcChar, char) end
return M
